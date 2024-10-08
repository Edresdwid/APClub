using System;
using System.IO;
using System.Collections.Generic;
using System.Web;
using System.Text.RegularExpressions;   // Add this
using System.Collections.Specialized;   // Add this
using System.ComponentModel;            // Add this for EditorBrowsableAttribute


namespace APClub__My_FYP_
{
    public partial class ApplyClubCreation : System.Web.UI.Page
    {
        AppDbContext db = new AppDbContext();

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Collect form data
            string clubName = txtClubName.Text.Trim();
            string description = txtDescription.Text.Trim();
            string category = ddlCategory.SelectedValue;
            string presidentName = txtPresidentName.Text.Trim();
            string presidentEmail = txtPresidentEmail.Text.Trim();
            string vicePresidentName = txtVicePresidentName.Text.Trim();
            string vicePresidentEmail = txtVicePresidentEmail.Text.Trim();
            string logoPath = null;

            // Validate file upload
            if (fuClubLogo.HasFile)
            {
                string fileExtension = Path.GetExtension(fuClubLogo.FileName);
                if (fileExtension == ".jpg" || fileExtension == ".png" || fileExtension == ".jpeg")
                {
                    // Define a unique name for the file
                    string fileName = Guid.NewGuid().ToString() + fileExtension;
                    // Define the folder path where you will save the logo
                    string folderPath = Server.MapPath("~/ClubLogos/");

                    // Check if the folder exists, if not, create it
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    // Save the uploaded file in the specified folder
                    fuClubLogo.SaveAs(Path.Combine(folderPath, fileName));

                    // Store the relative path for the logo in the database
                    logoPath = "~/ClubLogos/" + fileName;
                    lblUploadStatus.Text = "Logo uploaded successfully!";
                }
                else
                {
                    // Show an error if the file extension is not valid
                    lblUploadStatus.Text = "Only .jpg, .png, and .jpeg files are allowed.";
                    return;
                }
            }
            else
            {
                // Show an error if no file is uploaded
                lblUploadStatus.Text = "Please upload a logo for the club.";
                return;
            }

            // Create new club application record
            var clubApplication = new ClubApplication
            {
                ClubName = clubName,
                Description = description,
                ClubCategory = category,
                PresidentName = presidentName,
                PresidentEmail = presidentEmail,
                VicePresidentName = vicePresidentName,
                VicePresidentEmail = vicePresidentEmail,
                LogoPath = logoPath,  // Save the uploaded logo path
                Status = "pending",
                SubmissionDate = DateTime.Now
            };

            // Save the club application to the database
            db.ClubApplications.Add(clubApplication);
            db.SaveChanges();

            // Set success message
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Your club creation request has been submitted successfully!";
        }
    }
}
