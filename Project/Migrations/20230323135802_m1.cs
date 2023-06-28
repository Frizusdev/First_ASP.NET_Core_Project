using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace Project.Migrations
{
    /// <inheritdoc />
    public partial class m1 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "CreatedDate", "Name", "NormalizedName" },
                values: new object[,]
                {
                    { "b6cd819d-7500-4b32-bd46-c7849173e752", null, new DateTime(2023, 3, 23, 14, 58, 2, 562, DateTimeKind.Local).AddTicks(9350), "Admin", "ADMIN" },
                    { "e798e2cb-6be1-466d-9a51-552763d7075d", null, new DateTime(2023, 3, 23, 14, 58, 2, 562, DateTimeKind.Local).AddTicks(9400), "Member", "MEMBER" }
                });

            migrationBuilder.InsertData(
                table: "AspNetUsers",
                columns: new[] { "Id", "AccessFailedCount", "ConcurrencyStamp", "Email", "EmailConfirmed", "FirstName", "LastName", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "SecurityStamp", "TwoFactorEnabled", "UserName" },
                values: new object[,]
                {
                    { "20804009-3cf1-4be1-994f-542be50e63e4", 0, "e2aa97a7-0f1b-4732-8ff2-aefa7a3609bc", "mm@mm.mm", true, "Mike", "Moore", false, null, "MM@MM.MM", "MM@MM.MM", "AQAAAAIAAYagAAAAECW2sCB/QZ2EXuxX4IRnYxtmdVCRo/3SutQFoXTkjF9rmO+SBvGTS3ljEc2+x5nP/A==", null, false, "649f62da-b594-4787-b026-46dfa8cad617", false, "mm@mm.mm" },
                    { "302719d8-112c-4838-a0f8-ebad11955221", 0, "6f3aa1b1-942e-4156-8688-3c1de3be2582", "aa@aa.aa", true, "Adam", "Atkins", false, null, "AA@AA.AA", "AA@AA.AA", "AQAAAAIAAYagAAAAEI1BiExmdGoSPtfJ/cA4vXbayUiI7cww2uh5Isp9d3pM2IUeqabL2Tek8zhPGQywYw==", null, false, "9bd4a96c-222b-408f-89b2-529da5617544", false, "aa@aa.aa" }
                });

            migrationBuilder.InsertData(
                table: "AspNetUserRoles",
                columns: new[] { "RoleId", "UserId" },
                values: new object[,]
                {
                    { "e798e2cb-6be1-466d-9a51-552763d7075d", "20804009-3cf1-4be1-994f-542be50e63e4" },
                    { "b6cd819d-7500-4b32-bd46-c7849173e752", "302719d8-112c-4838-a0f8-ebad11955221" }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "e798e2cb-6be1-466d-9a51-552763d7075d", "20804009-3cf1-4be1-994f-542be50e63e4" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "b6cd819d-7500-4b32-bd46-c7849173e752", "302719d8-112c-4838-a0f8-ebad11955221" });

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "b6cd819d-7500-4b32-bd46-c7849173e752");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "e798e2cb-6be1-466d-9a51-552763d7075d");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "20804009-3cf1-4be1-994f-542be50e63e4");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "302719d8-112c-4838-a0f8-ebad11955221");
        }
    }
}
