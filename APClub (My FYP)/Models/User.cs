using System;

namespace APClub__My_FYP_
{
    public class User
    {
        public int UserId { get; set; }    // Primary Key
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }   // 'student', 'club_admin', 'university_admin'
        public DateTime DateJoined { get; set; }
        public string Course { get; set; } // New Course field
    }
}
