using System;
using Microsoft.AspNetCore.Identity;

namespace Project.Models
{
    public class XRole : IdentityRole
    {
        public XRole() : base() { }

        public DateTime CreatedDate { get; set; }
    }
}