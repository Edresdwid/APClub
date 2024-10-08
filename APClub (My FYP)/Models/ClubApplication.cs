using System;

namespace APClub__My_FYP_
{
    public class ClubApplication
    {
        public int ApplicationId { get; set; }    // Primary Key
        public string ClubName { get; set; }
        public string Description { get; set; }
        public string ClubCategory { get; set; }
        public string PresidentName { get; set; }
        public string PresidentEmail { get; set; }
        public string VicePresidentName { get; set; }
        public string VicePresidentEmail { get; set; }
        public int SubmittedBy { get; set; }      // Foreign Key (Student ID)
        public string Status { get; set; }        // 'pending', 'approved', 'rejected'
        public DateTime SubmissionDate { get; set; }
        public string LogoPath { get; set; }      // Path to the uploaded logo
    }
}
