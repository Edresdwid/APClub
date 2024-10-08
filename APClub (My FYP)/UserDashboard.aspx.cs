using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APClub__My_FYP_
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnViewClubs_Click(object sender, EventArgs e)
        {
            // Redirect to the page to view available clubs
            Response.Redirect("ViewClubs.aspx");
        }

        protected void btnJoinClubs_Click(object sender, EventArgs e)
        {
            // Redirect to the page to join a club
            Response.Redirect("JoinClubs.aspx");
        }
    }
}
