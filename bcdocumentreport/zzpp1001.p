/* zzpp1001.p - Positive Payment File creation  subprogram                    */
/*              BOFA (Bank of America)  format;                               */
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

define variable h               as handle    no-undo.
define variable lOK             as logical   no-undo.
define variable lvi_NbOfTxs     as integer   no-undo.
define variable lvc_Ustrd       as character no-undo.
define variable lvc_format      as character no-undo.

define variable lvd_control_sum as decimal   no-undo.
define variable cExportDir      as character no-undo initial "/tmp/".
define variable file_name       as character no-undo initial "XX.xml".


define variable v_acct         as character initial "1234567890".
define variable v_routing      as character initial "RR1234567890".
define variable v_bk_org_ctry  as character initial "US".
define variable v_bk_vend_acct as character initial "98761".

/*for each CCollection where CCollectionipg_payselCodeList = ipg_paysel no-lock,
    first PaySel no-lock where PaySel.PaySel_ID = CCollection.PaySel_ID
    each cdocument of CCollection no-lock,each company of cdocument no-lock,
    each creditor of cdocument no-lock,
    each businessrelation of creditor no-lock,
    each currency of cdocument no-lock,
    each CDocumentInvoiceXref of Cdocument no-lock,
    each Cinvoice of CDocumentInvoiceXref no-lock,
    each CinvoiceBank of Cinvoice no-lock,
    each banknumber of Cinvoicebank no-lock
    break by CCollection.ccollection_id by cdocument.cdocument_id:
    

create tqCDocumentReportCheque.
ti_Sequence = 1.
create tqCDocumentReportCheque.
ti_Sequence = 2.

temp-table tqCDocumentReportCheque:write-xml("file","/home/xxxx/tqCDocumentReportCheque.xml",true).

stop.


define variable lvh_DS as handle no-undo.

lvh_DS = temp-table tqCDocumentReportCheque:handle.
lvh_DS:read-xml("file",
"/home/xxxx/tqCDocumentReportCheque.xml","empty",?,?).
stop.    
*/
assign 
   lvc_format             = session:numeric-format
   session:numeric-format = "American".

assign
   lvi_NbOfTxs = 0.
for each tqCDocumentReportCheque
   break by tgCDocumentID:
   if last-of(tgCDocumentID) then
      lvi_NbOfTxs = lvi_NbOfTxs + 1.
end.

mainloop:
for each tqCDocumentReportCheque
   break by tgCDocumentID:

   if first(tgCDocumentID) then 
   do:      
      create sax-writer h.
      
      /*ACH Header Record*/
      h:formatted = true.
      h:encoding  = "UTF-8".
      h:set-output-destination("file", right-trim(cExportDir) + "/" + file_name).
      h:start-document( ).
     
      h:start-element("Document").
      h:declare-namespace("urn:iso:std:iso:20022:tech:xsd:pain.001.001.03").
      h:declare-namespace("http://www.w3.org/2001/XMLSchema-instance", "xsi").
      h:start-element("CstmrCdtTrfInitn").
      h:start-element("GrpHdr").
      h:write-data-element("MsgId", tcPaySelCode + " " + iso-date(ttCDocRepCreationDate)).
      h:write-data-element("CreDtTm", iso-date(datetime(today,mtime))).
      /* h:start-element("Authstn").          *OPTIONAL*/
      /* h:write-data-element("Cd", "AUTH").  *OPTIONAL*/
      /* h:end-element("Authstn").            *OPTIONAL*/
      h:write-data-element("NbOfTxs", string(lvi_NbOfTxs)).
      h:start-element("InitgPty").
      h:start-element("Id").
      h:start-element("OrgId").
      h:start-element("Othr").
      /*h:write-data-element("Id", "xxx").  /* HSBC Connect Customer ID, here*/*/
      h:write-data-element("BICOrBEI", "HKBCCATT").  /* HSBC BIC, here*/
      h:end-element("Othr").              
      h:end-element("OrgId").             
      h:end-element("Id").
      h:end-element("InitgPty").
      h:end-element("GrpHdr").
     
      h:start-element("PmtInf").
      h:write-data-element("PmtInfId", substring(tcPaySelCode,1,35)).
      h:write-data-element("PmtMtd", "TRF"). /*TRF” for both LV and HV Payment types*/
      h:start-element("PmtTpInf").
      h:start-element("SvcLvl").               
      h:write-data-element("Cd", "URGP").     
      h:end-element("SvcLvl").   
      h:end-element("PmtTpInf").
      h:write-data-element("ReqdExctnDt", iso-date(today)).
     
      h:start-element("Dbtr").
      h:write-data-element("Nm", substring(tcCDocRepCompanyName1, 1, 140)).
      h:start-element("PstlAdr").
      h:write-data-element("StrtNm", tcCDocRepCompanyStreet1).
      h:write-data-element("PstCd",  tcCDocRepCompanyZip).
      h:write-data-element("TwnNm",  tcCDocRepCompanyCity).
      for first Country no-lock where CountryDescription = tcCDocRepCompanyCountry:
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
      h:write-data-element("Ccy", substring(tcCDocRepCurrency,1,3)). /*Identification of the currency in which the account is held.*/
      h:end-element("DbtrAcct").
     
      h:start-element("DbtrAgt").
      h:start-element("FinInstnId").
      h:write-data-element("BIC", substring(tcCDocRepCompanyBankNumberSwift,1,11)).
      /*h:start-element("ClrSysMmbId").                */
      /*h:write-data-element("MmbId", v_routing).      */
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


   lvc_Ustrd = lvc_Ustrd + tcCInvoiceDescription + " ".

   if last-of(tgCDocumentID) then 
   do:
      /* ACH Payment Record */            
      h:start-element("CdtTrfTxInf").         /*can be multiple sections*/
      h:start-element("PmtId").
      h:write-data-element("InstrId",    string(tiCDocRepPrePrintedNum,"9999999999")).
      h:write-data-element("EndToEndId", string(tiCDocRepPrePrintedNum,"9999999999")).
      h:end-element("PmtId").
      h:start-element("Amt").
      h:start-element("InstdAmt").
      h:insert-attribute("Ccy", tcCDocRepCurrency).
      h:write-characters(trim(string(tdCDocRepAmount,">>>>>>>>>>>9.99<<<"))).
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
      h:write-data-element("Nm",          tcCDocRepCredName1).
      h:start-element("PstlAdr").
      h:write-data-element("PstCd",       tcCDocRepCredZip).
      h:write-data-element("TwnNm",       tcCDocRepCredCity).
      h:write-data-element("CtrySubDvsn", tcCDocRepCredCounty).
      h:write-data-element("Ctry",        tcCDocRepCredCountry).
      h:write-data-element("AdrLine", trim(tcCDocRepCredStreet1) + ' ' + trim(tcCDocRepCredStreet2)).
      h:end-element("PstlAdr").
      h:end-element("Cdtr").
      
      h:start-element("CdtrAgt"). /*Bank of the creditor. Mandatory as the identification of the creditor bank is required.*/
      h:start-element("FinInstnId").
      h:write-data-element("BIC", substring(tcCDocRepCredBankNumberSwift,1,11)).
      h:start-element("PstlAdr").
      for first Country no-lock where CountryDescription = tcCDocRepCredBankBRCountry:
         h:write-data-element("Ctry", CountryCode).
      end.      
      h:end-element("PstlAdr").
      h:end-element("FinInstnId").     
      h:end-element("CdtrAgt").

      h:start-element("CdtrAcct").
      h:start-element("Id").
      h:start-element("Othr").
      h:write-data-element("Id", tcCDocRepCredBankNumber).
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

   if last(tgCDocumentID) then 
   do:
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
