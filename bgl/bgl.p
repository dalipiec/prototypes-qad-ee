/* Customization code for component BGL */
&scoped-define class-version 118.0
{ definition/bgl.i
  &USEDDATAITEMS = "vcUserLogin,vcMfgDomain"}

/* developer notes:
Prerequisites:
1. define a new cust field ie. "CustomDecimal4" for bgl component in "User-Defined Field Create",
2. create Gen Code (see details below) - in "Comment" field it will store Role name (ie. "superuser"); 
   (only users with that role will see new custom column)

Summary:
1. compile this file (bgl.p) with "syab code-fin-update ..." 
2. create Gen Code,
3. run "User-Defined Field Create" and create "CustomDecimal4" field,
4. run "GL Account View" and add/enable newly added column via "Columns" drop-down menu.

This prototype was builf for 2020EE version, as a part of project integrating QAD with a bank(s), to 
present bank's account balance, directly in QAD ERP.
*/

/* Bank account balance integration project - resticting accces to UDF fields per role */
PROCEDURE BGL.GetBusinessFields.after:
   define variable lvi_i          as integer   no-undo.
   define variable lvc_role       as character no-undo.
   define variable lvc_domain     like   Domains.DomainCode   no-undo.
   define variable lvl_notAllowed as logical   no-undo initial true.
   define variable lvi_return     as integer   no-undo.

   if t_parameter.icReference = "SelectGL" then do:

      for first code_mstr no-lock where code_mstr.code_domain = vcMfgDomain
         and code_mstr.code_fldname = "bgl.p"
         and code_mstr.code_value   = "role_name":

         run GetDataItems.

         for first Usr where UsrLogin = vcUserLogin no-lock,
            each UsrDomain no-lock where UsrDomain.Usr_ID = Usr.Usr_ID,
            first Domains no-lock where Domains.Domain_ID = UsrDomain.Domain_ID
                 and DomainCode = vcMfgDomain,
            each UsrRole no-lock where UsrRole.Usr_ID = Usr.Usr_ID,
            first Role no-lock where Role.Role_ID = UsrRole.Role_ID
                 and Role.RoleName = /*lvc_role*/ code_mstr.code_cmmt,
            first UsrRoleDomain no-lock where UsrRoleDomain.Domain_ID = Domains.Domain_ID
               and UsrRoleDomain.UsrRole_ID = UsrRole.UsrRole_ID
               and UsrRoleDomain.Usr_ID     = Usr.Usr_ID
               and UsrRoleDomain.Role_ID   = Role.Role_ID:

               /* for debugging */
               /*message "DLPXH-enable: " code_mstr.code_cmmt.*/
               assign
                lvl_notAllowed = false.

         end. /*for first Usr */
      end. /*for first code_mstr */

      if lvl_notAllowed = true then
         for each tBusinessFields where tBusinessFields.tcFcFieldName = "tGL.CustomDecimal4" or
            tBusinessFields.tcFcFieldName = "tqSelectGL.GL_CustomDecimal4":
            delete tBusinessFields.
         end.
   end. /*if t_parameter.icReference = "SelectGL" */
END PROCEDURE.
