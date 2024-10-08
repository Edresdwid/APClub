using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APClub__My_FYP_
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCreateEvent_Click(object sender, EventArgs e)
        {
            // Redirect to the page for creating events
            Response.Redirect("CreateEvent.aspx");
        }

        protected void btnManageMembers_Click(object sender, EventArgs e)
        {
            // Redirect to the page for managing club members
            Response.Redirect("ManageMembers.aspx");
        }
    }
}
