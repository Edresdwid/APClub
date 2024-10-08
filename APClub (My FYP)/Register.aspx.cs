using System;
using System.Linq;

namespace APClub__My_FYP_
{
    public partial class Register : System.Web.UI.Page
    {
        AppDbContext db = new AppDbContext();

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();
            string course = txtCourse.Text.Trim();

            // Check if the email already exists in the database
            var existingUser = db.Users.SingleOrDefault(u => u.Email == email);
            if (existingUser != null)
            {
                lblMessage.Text = "Email already exists!";
                return;
            }

            // Check if passwords match
            if (password != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match!";
                return;
            }

            // Create a new user object and save to the database
            var newUser = new User
            {
                Name = name,
                Email = email,
                Password = password,
                Course = course,  // Save the course information
                Role = "student",  // Default role is "student"
                DateJoined = DateTime.Now
            };

            db.Users.Add(newUser);
            db.SaveChanges();

            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Registration successful! You can now log in.";

            // Clear the form after successful registration
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtConfirmPassword.Text = string.Empty;
            txtCourse.Text = string.Empty;
        }
    }
}
