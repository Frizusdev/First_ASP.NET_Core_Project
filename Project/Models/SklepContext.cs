using Microsoft.EntityFrameworkCore;

namespace Project.Models
{
    internal class SklepContext : DbContext
    {
        private readonly string connectionString;

        public SklepContext(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public DbSet<Item> SklepItems { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseMySQL(connectionString);
        }
    }
}

