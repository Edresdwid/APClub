using System.Data.Entity;

namespace APClub__My_FYP_
{
    public class AppDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<ClubApplication> ClubApplications { get; set; }  // Add this line

        public AppDbContext() : base("APClubDB")
        {
        }
    }
}
