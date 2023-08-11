/* Customization code for component BExchangeRateProvider */
&scoped-define class-version 0.0
{ definition/bexchangerateprovider.i }


&GLOBAL-DEFINE EXCHANGERATEPROVIDER-NBP      "NBP"
&GLOBAL-DEFINE EXCHANGERATEPROVIDER-NBP-CURR "PLN"
/*
Requirements:
a\ "curl" tool that allows you to request and transfer data over a URL under different protocols
b\ "jq" a lightweight, flexible, command-line JSON processor (to parse API response)


Developer notes: add below NBP definition to config/server.xml
(NBP API doesnt require any authentication and will return all valid ex rates (table of ex rates) as json array)

    <exchangerateprovider>
        <NBPHost>api.nbp.pl</NBPHost>
        <NBPPort>80</NBPPort>
        <NBPURL>http://api.nbp.pl/api/exchangerates/tables/A/?format=json</NBPURL>
    </exchangerateprovider>

*/

define variable vcReferenceNo     as character no-undo.
define variable vcToCurrencyCodes as character no-undo.

/* to add NBP exrateprovider to the existing list of providers */
PROCEDURE BExchangeRateProvider.ListExchangeRateProviders.after:
   t_Parameter.ocValues = ocValues + chr(2) + {&EXCHANGERATEPROVIDER-NBP} + chr(2) + {&EXCHANGERATEPROVIDER-NBP}.
END PROCEDURE.


PROCEDURE BExchangeRateProvider.ImportExchRateHttp.after:
   /*
   message "debug 1 ImportExchRateHttp.after" string(t_Parameter.ocResponse). /*http headers returned*/
   message "debug 2 ImportExchRateHttp.after" string(t_Parameter.opContent).  /*the document returned.*/
   message "debug 3 ImportExchRateHttp.after" length(t_Parameter.opContent).
   */
END PROCEDURE.

PROCEDURE BExchangeRateProvider.ImportExchRateBuildURL.after:

   if t_Parameter.icExchangeRateProvider = {&EXCHANGERATEPROVIDER-NBP} then do on error undo, throw:

      /* URL below is hard-coded, but it can picked ie. from Gen Codes */
      assign
         t_Parameter.ocExchangeRateProviderURL = "http://api.nbp.pl/api/exchangerates/tables/A/?format=json"
         vcToCurrencyCodes                     = "".

      for each tTargetCurrencyCode break by tTargetCurrencyCode.tcCurrencyCode:
          if first(tTargetCurrencyCode.tcCurrencyCode) then
             vcToCurrencyCodes = trim(tTargetCurrencyCode.tcCurrencyCode).
          else
            vcToCurrencyCodes = vcToCurrencyCodes + "," + trim(tTargetCurrencyCode.tcCurrencyCode).
      end. /* for each tTargetCurrencyCode: */

   end. /*if t_Parameter.icExchangeRateProvider */
END PROCEDURE.


PROCEDURE BExchangeRateProvider.ImportExchRateProcessResult.after:
   define variable viReturn            as integer   no-undo.
   define variable vcMessage           as character no-undo.
   define variable lvc_curl_command    as character no-undo.
   define variable lvc_curl_status     as character no-undo.
   define variable i                   as integer   no-undo.

   if t_Parameter.icExchangeRateProvider = {&EXCHANGERATEPROVIDER-NBP} then do on error undo, throw:

      do i = 1 to num-entries(vcToCurrencyCodes):
         lvc_curl_command = substitute(
         "curl -s 'https://api.nbp.pl/api/exchangerates/tables/A/?format=json' | jq '.[] | .rates[] | select(.code == &1) | .mid'",
         quoter(entry(i, vcToCurrencyCodes))).

         input through value(lvc_curl_command).
         import unformatted lvc_curl_status.
         input close.
         lvc_curl_status = trim(lvc_curl_status) .

         /* check if an empty resultset is returned or no exchange rates returned */
         if lvc_curl_status = "" or lvc_curl_status = "null" then do:
            assign
               vcMessage   = 'The call to the exchange rate provider service NBP has returned an empty resultset.'
                             + chr(10)
                             + 'Possible cause: Non supported currency in currency pair.'
               t_parameter.oiReturnStatus = -3.

            run SetMessage
               (input  vcMessage,
               input  '',
               input  '',
               input  '',
               input  'E',
               input  3,
               input  '',
               input  'cust-908252',
               input  '',
               input  '',
               input  '',
               output viReturn).
            return.
         end. /*if lvc_curl_status */

         create tImportResult.
         assign
            tImportResult.tcFromCurrencyCode  = {&EXCHANGERATEPROVIDER-NBP-CURR}
            tImportResult.tcToCurrencyCode    = entry(i, vcToCurrencyCodes)
            tImportResult.tdExchangeRate      = 1 / decimal(lvc_curl_status)
            tImportResult.tdExchangeRateScale = 1 /* for the moment always 1 because that is not returned from the providers */
            no-error.

         /* Check error status of previous assign statement */
         if error-status:error then do:
            assign
               vcMessage      = trim('The system cannot process the results from the exchange rate provider.')
               oiReturnStatus = -3.
            if error-status:num-messages > 0 then
               vcMessage = vcMessage + chr(10) +
                  trim(substitute('Detailed info: &1 (&2).',error-status:get-message(1),string(error-status:get-number(1)))).

            run SetMessage
               (input  vcMessage,
               input  '',
               input  '',
               input  '',
               input  'E',
               input  3,
               input  '',
               input  'cust-797317',
               input  '',
               input  '',
               input  '',
               output viReturn).
         end. /* if error-status:error */

      end. /* do i = 1 to num-entries(vcToCurrencyCodes): */


      /*OPTIONAL LOGIC to save Reference No from API into ExchangeRate.QADC02 field;
        value of Reference No is used later in BExchangeRateProvider.ImportExchRate.after procedure*/

      assign
         vcReferenceNo    = ""
         lvc_curl_command =
         "curl 'https://api.nbp.pl/api/exchangerates/tables/A/?format=json' -s  | jq -r '.[].no'".

      input through value(lvc_curl_command).
      import unformatted vcReferenceNo.
      input close.
      
      /* there is no API responce validation here, as Reference No is optional */

      if vcReferenceNo = "null" then
         vcReferenceNo = "".

   end. /* do on error */
END PROCEDURE.


/*OPTIONAL LOGIC to save Reference No*/
PROCEDURE BExchangeRateProvider.ImportExchRate.after:
   for each tImportExchRate:
      tImportExchRate.QADC02 = vcReferenceNo.
   end.
END PROCEDURE.
