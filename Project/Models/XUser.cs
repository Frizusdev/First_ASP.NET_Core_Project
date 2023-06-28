using System;
using Microsoft.AspNetCore.Identity;

namespace Project.Models
{
	public class XUser : IdentityUser
	{
		public XUser() : base() { }

		public string? FirstName { get; set; }
		public string? LastName { get; set; }
	}
}

