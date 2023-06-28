using System;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Project.Models;

namespace Project.Data
{
        public static class ModelBuilderExtensions
        {
            public static void Seed(this ModelBuilder builder)
            {
                var pwd = "P@$$w0rd";
                var passwordHasher = new PasswordHasher<XUser>();

                // Seed Roles
                var adminRole = new XRole()
                {
                    Name = "Admin",
                    CreatedDate = DateTime.Now
                };
                adminRole.NormalizedName = adminRole.Name.ToUpper();

                var memberRole = new XRole()
                {
                    Name = "Member",
                    CreatedDate = DateTime.Now
                };
                memberRole.NormalizedName = memberRole.Name.ToUpper();

                List<XRole> roles = new List<XRole>() {
                adminRole,
                memberRole
            };

                builder.Entity<XRole>().HasData(roles);

                // Seed Users
                var adminUser = new XUser
                {
                    UserName = "aa@aa.aa",
                    Email = "aa@aa.aa",
                    EmailConfirmed = true,
                    FirstName = "Adam",
                    LastName = "Atkins"
                };
                adminUser.NormalizedUserName = adminUser.UserName.ToUpper();
                adminUser.NormalizedEmail = adminUser.Email.ToUpper();
                adminUser.PasswordHash = passwordHasher.HashPassword(adminUser, pwd);

                var memberUser = new XUser
                {
                    UserName = "mm@mm.mm",
                    Email = "mm@mm.mm",
                    EmailConfirmed = true,
                    FirstName = "Mike",
                    LastName = "Moore"
                };
                memberUser.NormalizedUserName = memberUser.UserName.ToUpper();
                memberUser.NormalizedEmail = memberUser.Email.ToUpper();
                memberUser.PasswordHash = passwordHasher.HashPassword(memberUser, pwd);

                List<XUser> users = new List<XUser>() {
                adminUser,
                memberUser,
            };

                builder.Entity<XUser>().HasData(users);

                // Seed UserRoles
                List<IdentityUserRole<string>> userRoles = new List<IdentityUserRole<string>>();

                userRoles.Add(new IdentityUserRole<string>
                {
                    UserId = users[0].Id,
                    RoleId = roles.First(q => q.Name == "Admin").Id
                });

                userRoles.Add(new IdentityUserRole<string>
                {
                    UserId = users[1].Id,
                    RoleId = roles.First(q => q.Name == "Member").Id
                });


                builder.Entity<IdentityUserRole<string>>().HasData(userRoles);
            }
        }
}

