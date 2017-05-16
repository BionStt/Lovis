﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lovis.Views.Proyects
{
    public partial class AddProyect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addp_create_Click(object sender, EventArgs e)
        {
            // Get User
            Controllers.Users.Users CU = Session["User"] as Controllers.Users.Users;

            // Create new license (it add itself to db)
            Controllers.License.License idLicense = new Controllers.License.License(CU);

            // Add to UserLicense (it add itself to db)
            new Controllers.UserLicense.UserLicense(CU.Id, idLicense.Id, 1, false);

            // Create proyect to license
            new Controllers.Proyects.Proyects(addp_title.Text, addp_summary.Text, idLicense.Id, CU);
        }
    }
}