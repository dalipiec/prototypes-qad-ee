/* Customization code for component BBankImportLine                           */
&scoped-define class-version 2.0
{ definition/bbankimportline.i }

/* START*/
/* find Creditor Code of the cheque
   for "BAI2* Payment Type;
   Cheque nbr is stored in (tBankImpLine.BankImpLinePaymentNbr)
   */
PROCEDURE BBankImportLine.GetCreditorByBankImpLine.before:
   define variable lvi_company_id like Company.Company_ID no-undo.
   define variable lvi_return     as   integer            no-undo.
   define variable lvi_cheque     as   integer            no-undo.

   lvi_cheque = integer(tBankImpLine.BankImpLinePaymentNbr) no-error.

   if tBankImpLine.BankImpLineCreditorCode = ""
      and error-status:error = false
      and lvi_cheque <> 0
      and tBankImpLine.BankImpLineFileFormatCode  = "BAI2"
      then do:

      run getpublicdata("viCompanyId", output lvi_company_id, output lvi_return).

      for first Company no-lock where Company.Company_ID = lvi_company_id,
         first Domains of Company no-lock,
         each DomainSharedSet of Domains no-lock,
         first SharedSet of DomainSharedSet no-lock where SharedSetTypeCode = "CREDITOR",
         first CDocument no-lock where CDocument.Company_ID = Company.Company_ID
         and CDocument.CDocumentPrePrintedNumber = lvi_cheque,
         first Creditor no-lock where Creditor.SharedSet_ID = SharedSet.SharedSet_ID
         and Creditor.CreditorCode = tBankImpLine.BankImpLineCreditorCode:

            assign
               tBankImpLine.Creditor_ID             = Creditor.Creditor_ID
               tBankImpLine.BankImpLineCreditorCode = Creditor.CreditorCode
               .
      end. /*for first Company */
   end. /*if tBankImpLine.BankImpLineCreditorCode = " */
END PROCEDURE.
