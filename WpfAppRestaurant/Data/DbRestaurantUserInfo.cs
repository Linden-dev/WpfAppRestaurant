using System.Data.Entity;
using WpfAppRestaurant.Service;

namespace WpfAppRestaurant.Data
{
    public partial class DbRestaurantUserInfo : DbContext
    {
        public DbRestaurantUserInfo()
            //: base("name=DbRestaurantUserInfo")
            : base(DbConnStringService.DbRestaurantUserInfo)
        {
        }

        public virtual DbSet<user> user { get; set; }
        public virtual DbSet<vw_user_role_permission> vw_user_role_permission { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<user>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<vw_user_role_permission>()
                .Property(e => e.user_title)
                .IsUnicode(false);

            modelBuilder.Entity<vw_user_role_permission>()
                .Property(e => e.role_title)
                .IsUnicode(false);

            modelBuilder.Entity<vw_user_role_permission>()
                .Property(e => e.permission_title)
                .IsUnicode(false);

            modelBuilder.Entity<vw_user_role_permission>()
                .Property(e => e.firstname)
                .IsUnicode(false);

            modelBuilder.Entity<vw_user_role_permission>()
                .Property(e => e.middlename)
                .IsUnicode(false);

            modelBuilder.Entity<vw_user_role_permission>()
                .Property(e => e.lastname)
                .IsUnicode(false);
        }
    }
}
