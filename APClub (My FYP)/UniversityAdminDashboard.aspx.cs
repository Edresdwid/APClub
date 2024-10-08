using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APClub__My_FYP_
{
    public partial class UniversityAdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnApproveClubs_Click(object sender, EventArgs e)
        {
            // Redirect to the page for approving/rejecting clubs
            Response.Redirect("ApproveClubs.aspx");
        }

        protected void btnApproveEvents_Click(object sender, EventArgs e)
        {
            // Redirect to the page for approving/rejecting events
            Response.Redirect("ApproveEvents.aspx");
        }
        protected void btnManageUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageUsers.aspx");
        }

    }
}
