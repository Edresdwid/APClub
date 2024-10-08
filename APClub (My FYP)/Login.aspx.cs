using System;
using System.Linq;

namespace APClub__My_FYP_
{
    public partial class Login : System.Web.UI.Page
    {
        // Instantiate the database context
        AppDbContext db = new AppDbContext();

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            try
            {
                // Display the email and password being used for the query
                lblMessage.Text = $"Trying to log in with Email: {email}, Password: {password}";

                // Query the database to find the user with matching email and password
                var user = db.Users.SingleOrDefault(u => u.Email.ToLower() == email.ToLower() && u.Password == password);

                if (user != null)
                {
                    lblMessage.Text = $"Logged in as {user.Name} with role {user.Role}";

                    // Redirect based on the role
                    if (user.Role == "club_admin")
                    {
                        Response.Redirect("AdminDashboard.aspx");
                    }
                    else if (user.Role == "university_admin")
                    {
                        Response.Redirect("UniversityAdminDashboard.aspx");
                    }
                    else
                    {
                        Response.Redirect("UserDashboard.aspx");
                    }
                }
                else
                {
                    lblMessage.Text = "Invalid email or password!";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }
    }
}
