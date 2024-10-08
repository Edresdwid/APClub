using System;
using System.Linq;

namespace APClub__My_FYP_
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        AppDbContext db = new AppDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUsers(); // Load all users on page load
            }
        }

        // Load users into the GridView
        protected void LoadUsers()
        {
            var users = db.Users.ToList();
            UserGrid.DataSource = users;
            UserGrid.DataBind();
        }

        // Search for users based on the selected category and search term
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchCategory = ddlSearchCategory.SelectedValue;  // Get selected search category (Name, Email, Role)
            string searchTerm = txtSearch.Text.Trim();                // Get search term from the search box

            // Perform search based on the selected category
            var users = db.Users.AsQueryable();

            if (!string.IsNullOrEmpty(searchTerm))
            {
                switch (searchCategory)
                {
                    case "Name":
                        users = users.Where(u => u.Name.Contains(searchTerm));
                        break;
                    case "Email":
                        users = users.Where(u => u.Email.Contains(searchTerm));
                        break;
                    case "Role":
                        users = users.Where(u => u.Role.Contains(searchTerm));
                        break;
                }
            }

            // Bind the filtered users to the GridView
            UserGrid.DataSource = users.ToList();
            UserGrid.DataBind();
        }

        // Handle role update
        protected void UserGrid_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdateRole")
            {
                int userId = Convert.ToInt32(e.CommandArgument);
                System.Web.UI.WebControls.GridViewRow row = (System.Web.UI.WebControls.GridViewRow)((System.Web.UI.WebControls.Button)e.CommandSource).NamingContainer;
                System.Web.UI.WebControls.DropDownList ddlRoles = (System.Web.UI.WebControls.DropDownList)row.FindControl("ddlRoles");

                // Get the selected role
                string newRole = ddlRoles.SelectedValue;

                // Find the user in the database
                var user = db.Users.SingleOrDefault(u => u.UserId == userId);
                if (user != null)
                {
                    user.Role = newRole;  // Update the role
                    db.SaveChanges();     // Save changes to the database
                    LoadUsers();          // Refresh the user list
                    lblMessage.Text = $"User {user.Name}'s role updated to {newRole}";
                }
                else
                {
                    lblMessage.Text = "User not found.";
                }
            }
        }
    }
}
