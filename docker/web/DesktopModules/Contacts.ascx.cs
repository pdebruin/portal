using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace ASPNET.StarterKit.Portal {

    public abstract class Contacts : ASPNET.StarterKit.Portal.PortalModuleControl {
        protected System.Web.UI.WebControls.DataGrid myDataGrid;

        //*******************************************************
        //
        // The Page_Load event handler on this User Control is used to
        // obtain a DataReader of contact information from the Contacts
        // table, and then databind the results to a DataGrid
        // server control.  It uses the ASPNET.StarterKit.Portal.ContactsDB()
        // data component to encapsulate all data functionality.
        //
        //*******************************************************

        private void Page_Load(object sender, System.EventArgs e) {

            // Obtain contact information from Contacts table
            // and bind to the DataGrid Control
            ASPNET.StarterKit.Portal.ContactsDB contacts = new ASPNET.StarterKit.Portal.ContactsDB();

            myDataGrid.DataSource = contacts.GetContacts(ModuleId);
            myDataGrid.DataBind();
        }


        public Contacts() {
            this.Init += new System.EventHandler(Page_Init);
        }

        private void Page_Init(object sender, EventArgs e) {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
        }

		#region Web Form Designer generated code
        ///		Required method for Designer support - do not modify
        ///		the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            this.Load += new System.EventHandler(this.Page_Load);

        }
		#endregion
    }
}
