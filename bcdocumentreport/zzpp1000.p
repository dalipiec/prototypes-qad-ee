/* zzpp1000.p - Positive Payment File creation  subprogram                    */
/*              HSBC CA300 file format + HSBC ISO 20022 XML       format      */
{us/bbi/mfdeclre.i}

define temp-table tqCDocumentReportCheque no-undo
       field tc_Rowid as character
       field tcSortByField as character
       field tcCustom1 as character
       field tcCustom2 as character
       field tcCustomCombo0 as character
       field tcCustomCombo1 as character
       field tcCustomCombo2 as character
       field tcCustomCombo3 as character
       field tcCustomCombo4 as character
       field tcCustomCombo5 as character
       field tcCustomCombo6 as character
       field tcCustomCombo7 as character
       field tcCustomCombo8 as character
       field tcCustomCombo9 as character
       field ttCustomDate0 as date
       field ttCustomDate1 as date
       field ttCustomDate2 as date
       field ttCustomDate3 as date
       field ttCustomDate4 as date
       field tdCustomDecimal0 as decimal decimals 4
       field tdCustomDecimal1 as decimal decimals 4
       field tdCustomDecimal2 as decimal decimals 4
       field tdCustomDecimal3 as decimal decimals 4
       field tdCustomDecimal4 as decimal decimals 4
       field tiCustomInteger0 as integer
       field tiCustomInteger1 as integer
       field tiCustomInteger2 as integer
       field tiCustomInteger3 as integer
       field tiCustomInteger4 as integer
       field tcCustomLong0 as character
       field tcCustomLong1 as character
       field tcCustomNote as character
       field tcCustomShort0 as character
       field tcCustomShort1 as character
       field tcCustomShort2 as character
       field tcCustomShort3 as character
       field tcCustomShort4 as character
       field tcCustomShort5 as character
       field tcCustomShort6 as character
       field tcCustomShort7 as character
       field tcCustomShort8 as character
       field tcCustomShort9 as character
       field tdCDocRepAmount as decimal
       field tcCDocRepAmountInText as character
       field tdCDocRepCInvoiceBalanceTC as decimal
       field tcCDocRepCInvoiceCreditorCode as character
       field tcCDocRepCInvoiceCurrencyCode as character
       field ttCDocRepCInvoiceDate as date
       field ttCDocRepCInvoiceDiscountDueDat as date
       field ttCDocRepCInvoiceDueDate as date
       field tcCDocRepCInvoiceJournalCode as character
       field tiCDocRepCInvoicePeriod as integer
       field tcCDocRepCInvoiceReference as character
       field tdCDocRepCInvoiceTotalAllocTC as decimal
       field tdCDocRepCInvoiceTotalBalanceTC as decimal
       field tdCDocRepCInvoiceTotalDiscTC as decimal
       field tiCDocRepCInvoiceVoucher as integer
       field tdCDocRepCInvoiceXRefAmountTC as decimal
       field tdCDocRepCInvoiceXRefDiscAmTC as decimal
       field tiCDocRepCInvoiceYear as integer
       field tcCDocRepCompanyBankBRCode as character
       field tcCDocRepCompanyBankCity as character
       field tcCDocRepCompanyBankCountry as character
       field tcCDocRepCompanyBankCounty as character
       field tcCDocRepCompanyBankName1 as character
       field tcCDocRepCompanyBankName2 as character
       field tcCDocRepCompanyBankNumber as character
       field tcCDocRepCompanyBankNumberExten as character
       field tcCDocRepCompanyBankNumberForm as character
       field tcCDocRepCompanyBankNumberSwift as character
       field tcCDocRepCompanyBankNumberValid as character
       field tcCDocRepCompanyBankStreet1 as character
       field tcCDocRepCompanyBankStreet2 as character
       field tiCDocRepCompanyBankFormat as integer
       field tcCDocRepCompanyBankZip as character
       field tcCDocRepCompanyBRCode as character
       field tcCDocRepCompanyCity as character
       field tcCDocRepCompanyCountry as character
       field tcCDocRepCompanyCounty as character
       field tcCDocRepCompanyName1 as character
       field tcCDocRepCompanyName2 as character
       field tcCDocRepCompanyStreet1 as character
       field tcCDocRepCompanyStreet2 as character
       field tiCDocRepCompanyFormat as integer
       field tcCDocRepCompanyZip as character
       field ttCDocRepCreationDate as date
       field tcCDocRepCredBankBRCity as character
       field tcCDocRepCredBankBRCode as character
       field tcCDocRepCredBankBRCountry as character
       field tcCDocRepCredBankBRCounty as character
       field tcCDocRepCredBankBRName1 as character
       field tcCDocRepCredBankBRName2 as character
       field tcCDocRepCredBankBRStreet1 as character
       field tcCDocRepCredBankBRStreet2 as character
       field tiCDocRepCredBankBRFormat as integer
       field tcCDocRepCredBankBRZip as character
       field tcCDocRepCredBankNumber as character
       field tcCDocRepCredBankNumberExtent as character
       field tcCDocRepCredBankNumberForm as character
       field tcCDocRepCredBankNumberSwift as character
       field tcCDocRepCredBankNumberVal as character
       field tcCDocRepCredBRCode as character
       field tcCDocRepCredCity as character
       field tcCDocRepCredCode as character
       field tcCDocRepCredCountry as character
       field tcCDocRepCredCounty as character
       field tcCDocRepCredLngCode as character
       field tcCDocRepCredName1 as character
       field tcCDocRepCredName2 as character
       field tcCDocRepCredStreet1 as character
       field tcCDocRepCredStreet2 as character
       field tcCDocRepCredVatNumber as character
       field tiCDocRepCredFormat as integer
       field tcCDocRepCredZip as character
       field tcCDocRepCurrency as character
       field tcCDocRepDocumentStatus as character
       field tcCDocRepDocumentType as character
       field ttCDocRepDueDate as date
       field tiCDocRepNumber as integer
       field tcCDocRepReference as character
       field tiCDocRepValueDays as integer
       field tiCDocRepYear as integer
       field tgCDocumentID as int64
       field tiDocRepCInvoiceCurrNumberOfDec as integer
       field tiPayFormatTypeLinesPerPage as integer
       field tcReportDocID as character
       field tdCDocRepOrigCreditTC as decimal
       field tdCDocRepOrigDebitTC as decimal
       field tiCDocRepPrePrintedNum as integer
       field tiCDocRepChequeCents as integer
       field tiCDocRepChequeDollars as integer
       field tcDollarCurrency as character
       field tcCentCurrency as character
       field tcCurrencyCode as character
       field ti_Sequence as integer
       field tdCDocRepInvBalanceCreditTC as decimal
       field tdCDocRepInvBalanceDebitTC as decimal
       field tdCDocRepInvOrigCreditTC as decimal
       field tdCDocRepInvOrigDebitTC as decimal
       field tcCDocRepCredStreet3 as character
       field tcCDocRepCompanyStreet3 as character
       field tcCDocRepCInvoiceType as character
       field tcPaySelCode as character
       field tcCDocRepCredState as character
       field tgCInvoice_ID as int64
       field tgCreditor_ID as int64
       field tcCInvoiceDescription as character
       field tdCDocRepCInvoiceXRefPaidAmtTC as decimal
       field tgPaySelLine_ID as int64
       field tcCreditorDebtorNumber as character
       field tcCDocRepCompanyBankState as character
       field tcCDocRepCredBankState as character
       index BySequence is primary ti_Sequence.

define input parameter table for tqCDocumentReportCheque.
define input parameter ipc_global_domain as character.

define temp-table ttRep no-undo
   field fAccount as character format "x(10)"
   field fRouting as character format "x(9)"
   field fCheck#  as decimal   format "9999999999"
   field fAmt     as decimal   format "9999999999"
   field fAmt_Ap  like ap_amt  format "999999999999.99"
   field fChkDate as date      format "99999999"
   field fVoid    as character format "x(1)"
   field fName1   as character format "x(50)"
   field fName2   as character format "x(50)"
   field fFill    as character format "x(158)"
   field f_x1     as character format "x(300)".

define buffer btqCDocumentReportCheque for tqCDocumentReportCheque.

define stream srep.

define variable h               as handle    no-undo.
define variable lOK             as logical   no-undo.
define variable lvi_NbOfTxs     as integer   no-undo.
define variable lvc_Ustrd       as character no-undo.
define variable lvc_format      as character no-undo.
define variable lvd_control_sum as decimal   no-undo.
define variable lvc_dir         as character no-undo.
define variable lvc_routing     as character no-undo.
define variable lvi_count       as integer   format "99999999" no-undo.
define variable lvd_amt         like ap_amt  no-undo.
define variable v_acct          as character initial "1234567890".
define variable v_bk_org_ctry   as character initial "US".
define variable v_bk_vend_acct  as character initial "98761".

define variable lvh_DS as handle no-undo.

run pExportTXT.

procedure pExportTXT:

   mainloop:
   for each tqCDocumentReportCheque
      break by tqCDocumentReportCheque.tcPaySelCode
            by tqCDocumentReportCheque.tgCDocumentID:

      if first-of(tqCDocumentReportCheque.tcPaySelCode) then do:
         empty temp-table ttRep.

         for first code_mstr no-lock where code_domain = ipc_global_domain
            and code_fldname = "XX-CONTROL"
            and code_value   = "ROUT-" + tcCDocRepCompanyBankNumberForm:

            lvc_routing = trim(code_cmmt).
         end.
      end.

      create ttRep.
      assign
         fAccount               = tqCDocumentReportCheque.tcCDocRepCompanyBankNumber
         fRouting               = lvc_routing
         fCheck#                = tqCDocumentReportCheque.tiCDocRepPrePrintedNum
         fAmt                   = tqCDocumentReportCheque.tdCDocRepAmount * 100
         fAmt_ap                = tqCDocumentReportCheque.tdCDocRepAmount
         fChkDate               = tqCDocumentReportCheque.ttcdocrepcreationdate

         /*HSBC's CA300 standard use "V" value for voided checks, and "" for non-voided*/
         fVoid                  = " "
         fName1                 = tqCDocumentReportCheque.tcCDocRepCredName1
         fName2                 = tqCDocumentReportCheque.tcCDocRepCredName2
         fFill                  = ""
         substr(f_x1, 1,  9)    = fAccount
         substr(f_x1, 14, 10)   = string (fCheck#,"9999999999")
         substr(f_x1, 24, 10)   = string (fAmt,   "9999999999")
         substr(f_x1, 34, 8)    = string (fChkDate, "99999999")
         substr(f_x1, 42, 1)    = fVoid
         substr(f_x1, 43, 50)   = fName1
         substr(f_x1, 93, 50)   = fName2
         substr(f_x1, 143, 157) = fFill
         substr(f_x1, 300, 1)   = " ".

      if last-of(tqCDocumentReportCheque.tcPaySelCode) then do:

         /* non-voided Trailer Record for Total*/
         assign
            lvi_count = 0
            lvd_amt   = 0.

         for each ttRep where  fVoid = "" or fVoid = "I":
            assign
               lvi_count = lvi_count + 1
               lvd_amt   = lvd_amt   + fAmt_Ap.
         end.

         if lvi_count <> 0 or lvd_amt <> 0 then do:
            create ttRep.
            assign
               substr(f_x1, 1,  1)   = "T"
               substr(f_x1, 2,  10)  = trim(tqCDocumentReportCheque.tcCDocRepCompanyBankNumber)
               substr(f_x1, 15, 5 )  = " "
               substr(f_x1, 20, 10)  = string ((lvi_count),"9999999999")
               substr(f_x1, 30, 5)   = " "
               substr(f_x1, 35, 12)  = string ((lvd_amt * 100),"999999999999")
               substr(f_x1, 47, 253) = ""
               substr(f_x1, 300,1)   = " ".
         end.

         /* voided Trailer Record for Total*/
         assign
           lvi_count = 0
           lvd_amt   = 0.

         for each ttRep where fVoid = "V":
            assign
               lvi_count = lvi_count + 1
               lvd_amt   = lvd_amt   + fAmt_Ap.
         end.

         if lvi_count <> 0 or lvd_amt <> 0 then do:
            create ttRep.
            assign
               substr(f_x1, 1,  1)   = "T"
               substr(f_x1, 2,  10)  = trim(tqCDocumentReportCheque.tcCDocRepCompanyBankNumber)
               substr(f_x1, 15, 5 )  = " "
               substr(f_x1, 20, 10)  = string ((lvi_count),"9999999999")
               substr(f_x1, 30, 5)   = " "
               substr(f_x1, 35, 12)  = string ((lvd_amt * 100),"999999999999")
               substr(f_x1, 47, 5)   = "VOIDS"
               substr(f_x1, 52, 248) = ""
               substr(f_x1, 300,1)   = " ".
         end.

         for first code_mstr no-lock where code_domain = ipc_global_domain
            and code_fldname = "XX-MAUSER-CONTROL"
            and code_value   = "DIR-" + tqCDocumentReportCheque.tcCDocRepCompanyBankNumberForm:

            assign
               lvc_dir = trim(code_cmmt)
               lvc_dir = right-trim(code_cmmt,"/") + "/".

            output stream srep to value(lvc_dir + tqCDocumentReportCheque.tcPaySelCode + ".txt").

            for each ttRep:
               put stream srep f_x1 format "x(300)" skip.
            end.

            output stream srep close.
         end. /*for first code_mstr*/
      end. /*if last-of(tqCDocumentReportCheque.tcPaySelCode)*/
   end. /*for each tqCDocumentReportCheque*/

end procedure.

procedure pExportXML:
   assign
      lvc_format             = session:numeric-format
      session:numeric-format = "American".

   mainloop:
   for each tqCDocumentReportCheque
      break by tqCDocumentReportCheque.tcPaySelCode
            by tqCDocumentReportCheque.tgCDocumentID:

      if first(tqCDocumentReportCheque.tcPaySelCode) then do:

         for first code_mstr no-lock where code_domain = ipc_global_domain
            and code_fldname = "XX-MAUSER-CONTROL"
            and code_value   = "ROUT-" + tqCDocumentReportCheque.tcCDocRepCompanyBankNumberForm:

            lvc_routing = trim(code_cmmt).
         end.

         assign
            lvi_NbOfTxs = 0.

         for each btqCDocumentReportCheque where btqCDocumentReportCheque.tcPaySelCode = tqCDocumentReportCheque.tcPaySelCode:
            lvi_NbOfTxs = lvi_NbOfTxs + 1.
         end.

         for first code_mstr no-lock where code_domain = ipc_global_domain
            and code_fldname = "XX-CONTROL"
            and code_value   = "DIR-" + tqCDocumentReportCheque.tcCDocRepCompanyBankNumberForm:

            assign
               lvc_dir = trim(code_cmmt)
               lvc_dir = right-trim(code_cmmt,"/") + "/".
         end.

         create sax-writer h.

         /*ACH Header Record*/
         h:formatted = true.
         h:encoding  = "UTF-8".
         h:set-output-destination("file", lvc_dir + tqCDocumentReportCheque.tcPaySelCode + ".xml").
         h:start-document( ).

         h:start-element("Document").
         h:declare-namespace("urn:iso:std:iso:20022:tech:xsd:pain.001.001.03").
         h:declare-namespace("http://www.w3.org/2001/XMLSchema-instance", "xsi").
         h:start-element("CstmrCdtTrfInitn").
         h:start-element("GrpHdr").
         h:write-data-element("MsgId", tqCDocumentReportCheque.tcPaySelCode + " " + iso-date(tqCDocumentReportCheque.ttCDocRepCreationDate)).
         h:write-data-element("CreDtTm", iso-date(datetime(today,mtime))).
         /* h:start-element("Authstn").          *OPTIONAL*/
         /* h:write-data-element("Cd", "AUTH").  *OPTIONAL*/
         /* h:end-element("Authstn").            *OPTIONAL*/
         h:write-data-element("NbOfTxs", string(lvi_NbOfTxs)).
         h:start-element("InitgPty").
         h:start-element("Id").
         h:start-element("OrgId").
         h:start-element("Othr").
         /*h:write-data-element("Id", "WELBILT").  /* HSBC Connect Customer ID, here*/*/
         h:write-data-element("BICOrBEI", "HKBCCATT").  /* HSBC BIC, here*/
         h:end-element("Othr").
         h:end-element("OrgId").
         h:end-element("Id").
         h:end-element("InitgPty").
         h:end-element("GrpHdr").

         h:start-element("PmtInf").
         h:write-data-element("PmtInfId", substring(tqCDocumentReportCheque.tcPaySelCode,1,35)).
         h:write-data-element("PmtMtd", "TRF"). /*TRF” for both LV and HV Payment types*/
         h:start-element("PmtTpInf").
         h:start-element("SvcLvl").
         h:write-data-element("Cd", "URGP").
         h:end-element("SvcLvl").
         h:end-element("PmtTpInf").
         h:write-data-element("ReqdExctnDt", iso-date(today)).

         h:start-element("Dbtr").
         h:write-data-element("Nm", substring(tqCDocumentReportCheque.tcCDocRepCompanyName1, 1, 140)).
         h:start-element("PstlAdr").
         h:write-data-element("StrtNm", tqCDocumentReportCheque.tcCDocRepCompanyStreet1).
         h:write-data-element("PstCd",  tqCDocumentReportCheque.tcCDocRepCompanyZip).
         h:write-data-element("TwnNm",  tqCDocumentReportCheque.tcCDocRepCompanyCity).
         for first Country no-lock where CountryDescription = tqCDocumentReportCheque.tcCDocRepCompanyCountry:
            h:write-data-element("Ctry", CountryCode).
         end.
         h:end-element("PstlAdr").
         h:end-element("Dbtr").

         h:start-element("DbtrAcct").
         h:start-element("Id").
         h:start-element("Othr").
         h:write-data-element("Id", substring(v_acct,1,34)). /*Domestic account number */
         h:end-element("Othr").
         h:end-element("Id").
         h:write-data-element("Ccy", substring(tqCDocumentReportCheque.tcCDocRepCurrency,1,3)). /*Identification of the currency in which the account is held.*/
         h:end-element("DbtrAcct").

         h:start-element("DbtrAgt").
         h:start-element("FinInstnId").
         h:write-data-element("BIC", substring(tqCDocumentReportCheque.tcCDocRepCompanyBankNumberSwift,1,11)).
         /*h:start-element("ClrSysMmbId").                */
         /*h:write-data-element("MmbId", lvc_routing).      */
         /*h:end-element("ClrSysMmbId").                  */
         /*h:write-data-element("Nm", "WILLAMS HOG").     */
         h:start-element("PstlAdr").
         /*h:write-data-element("StrtNm", v_bk_org_ctry). */
         /*h:write-data-element("BldgNb", v_bk_org_ctry). */
         /*h:write-data-element("PstCd", v_bk_org_ctry).  */
         /*h:write-data-element("TwnNm", v_bk_org_ctry).  */
         h:write-data-element("Ctry", v_bk_org_ctry).
         h:end-element("PstlAdr").
         h:end-element("FinInstnId").
         h:end-element("DbtrAgt").
         h:write-data-element("ChrgBr", "DEBT").
      end. /*if first(tgCDocumentID) then do:*/


      lvc_Ustrd = lvc_Ustrd + tqCDocumentReportCheque.tcCInvoiceDescription + " ".

      if last-of(tqCDocumentReportCheque.tgCDocumentID) then
      do:
         /* ACH Payment Record */
         h:start-element("CdtTrfTxInf").         /*can be multiple sections*/
         h:start-element("PmtId").
         h:write-data-element("InstrId",    string(tqCDocumentReportCheque.tiCDocRepPrePrintedNum,"9999999999")).
         h:write-data-element("EndToEndId", string(tqCDocumentReportCheque.tiCDocRepPrePrintedNum,"9999999999")).
         h:end-element("PmtId").
         h:start-element("Amt").
         h:start-element("InstdAmt").
         h:insert-attribute("Ccy", tqCDocumentReportCheque.tcCDocRepCurrency).
         h:write-characters(trim(string(tqCDocumentReportCheque.tdCDocRepAmount,">>>>>>>>>>>9.99<<<"))).
         h:end-element("InstdAmt").
         h:end-element("Amt").

         h:write-data-element("ChrgBr", "DEBT").

         /*h:start-element("ChqInstr").                                                */
         /*h:write-data-element("ChqNb", string(tiCDocRepPrePrintedNum,"9999999999")). */
         /*h:start-element("DlvryMtd").                                                */
         /*h:write-data-element("Cd", "CRFA").                                         */
         /*h:end-element("DlvryMtd").                                                  */
         /*h:write-data-element("FrmsCd", "FE9").                                      */
         /*h:end-element("ChqInstr").                                                  */

         h:start-element("Cdtr").
         h:write-data-element("Nm",          tqCDocumentReportCheque.tcCDocRepCredName1).
         h:start-element("PstlAdr").
         h:write-data-element("PstCd",       tqCDocumentReportCheque.tcCDocRepCredZip).
         h:write-data-element("TwnNm",       tqCDocumentReportCheque.tcCDocRepCredCity).
         h:write-data-element("CtrySubDvsn", tqCDocumentReportCheque.tcCDocRepCredCounty).
         h:write-data-element("Ctry",        tqCDocumentReportCheque.tcCDocRepCredCountry).
         h:write-data-element("AdrLine", trim(tqCDocumentReportCheque.tcCDocRepCredStreet1) + ' ' + trim(tqCDocumentReportCheque.tcCDocRepCredStreet2)).
         h:end-element("PstlAdr").
         h:end-element("Cdtr").

         h:start-element("CdtrAgt"). /*Bank of the creditor. Mandatory as the identification of the creditor bank is required.*/
         h:start-element("FinInstnId").
         h:write-data-element("BIC", substring(tqCDocumentReportCheque.tcCDocRepCredBankNumberSwift,1,11)).
         h:start-element("PstlAdr").
         for first Country no-lock where CountryDescription = tqCDocumentReportCheque.tcCDocRepCredBankBRCountry:
            h:write-data-element("Ctry", CountryCode).
         end.
         h:end-element("PstlAdr").
         h:end-element("FinInstnId").
         h:end-element("CdtrAgt").

         h:start-element("CdtrAcct").
         h:start-element("Id").
         h:start-element("Othr").
         h:write-data-element("Id", tqCDocumentReportCheque.tcCDocRepCredBankNumber).
         h:end-element("Othr").
         h:end-element("Id").
         h:start-element("Purp").
         h:write-data-element("Cd", "GDDS").
         h:end-element("Purp").
         h:end-element("CdtrAcct").

         h:start-element("RmtInf").
         h:write-data-element("Ustrd", substring(trim(lvc_Ustrd),1,140)).
         h:end-element("RmtInf").


         h:end-element("CdtTrfTxInf").

         lvc_Ustrd = "".
      end. /*if last-of(tgCDocumentID) then do:*/

      if last(tqCDocumentReportCheque.tcPaySelCode) then do:
         /*ACH Trailer Record*/
         h:end-element("PmtInf").
         h:end-element("CstmrCdtTrfInitn").

         h:end-element("Document").
         h:end-document( ).
         delete object h no-error.
      end. /*if last(tgCDocumentID) then do:*/

   end. /*mainloop*/

   finally:
       session:numeric-format = lvc_format.
   end.
end procedure.
