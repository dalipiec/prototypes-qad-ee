/* Customization code for component BCDocumentReport                          */
&scoped-define class-version 23.1
{ definition/bcdocumentreport.i &USEDDATAITEMS = "vcMfgDomain,vcUserLogin"}


PROCEDURE BCDocumentReport.CDocumentReportCheque.before:
   define variable lvc_domain       as character   no-undo.
   define variable lvi_return       as integer     no-undo.

  run GetDataItems.
  
  for each tqCDocumentReportCheque,
     first code_mstr where code_domain = vcMfgDomain
     and code_fldname = "XX-CONTROL"
     and code_value   = "MICR-" + tcCDocRepCurrency no-lock:

     tcCustomShort0 = code_cmmt.
  end.
END PROCEDURE.

PROCEDURE BCDocumentReport.CDocumentReportCheque.after:

   /*
   temp-table tqFilter:write-xml("file","/tmp/tqFilter.xml",true).
   temp-table tqCDocumentReportCheque:write-xml("file","/tmp/tqCDocumentReportCheque.xml",true).
   */
   
   run GetPublicData.   
   for each tqCDocumentReportCheque,
     first CDocument   no-lock where CDocument_ID = tqCDocumentReportCheque.tgCDocumentID,
     first CCollection no-lock where CCollection.CCollection_ID = CDocument.CCollection_ID:

        CCollection.CustomShort0 = vcUserLogin + "-" + iso-date(datetime(today,mtime)).
        leave.
   end.

   /* how to identify bank? maybe via PaySelCode -> Bank GL account -> GL Description */
   for first tqFilter where tqFilter.tcBusinessFieldName = "PaySelCode",
      first PaySel no-lock where PaySel.PaySelCode = tqFilter.tcParameterValue,      
      first GL of PaySel no-lock:
      
      if GL.GLDescription matches "*HSBC*" then 
         /* Positive Pay file creation for HSBC */
         run us/zz/zzpp1000.r (input table tqCDocumentReportCheque).

      if GL.GLDescription matches "*BOFA*" then 
         /* Positive Pay file creation for BOFA */
         run us/zz/zzpp1001.r (input table tqCDocumentReportCheque).
   end.  
END PROCEDURE.
