-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 28 Cze 2023, 09:42
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `Project`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `AspNetRoleClaims`
--

CREATE TABLE `AspNetRoleClaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `AspNetRoles`
--

CREATE TABLE `AspNetRoles` (
  `Id` varchar(255) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `AspNetRoles`
--

INSERT INTO `AspNetRoles` (`Id`, `CreatedDate`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('b6cd819d-7500-4b32-bd46-c7849173e752', '2023-03-23 14:58:02.000000', 'Admin', 'ADMIN', NULL),
('e798e2cb-6be1-466d-9a51-552763d7075d', '2023-03-23 14:58:02.000000', 'Member', 'MEMBER', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `AspNetUserClaims`
--

CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `AspNetUserLogins`
--

CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `AspNetUserRoles`
--

CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `AspNetUserRoles`
--

INSERT INTO `AspNetUserRoles` (`UserId`, `RoleId`) VALUES
('20804009-3cf1-4be1-994f-542be50e63e4', 'e798e2cb-6be1-466d-9a51-552763d7075d'),
('302719d8-112c-4838-a0f8-ebad11955221', 'b6cd819d-7500-4b32-bd46-c7849173e752'),
('51f086ce-3846-474c-a67e-ba6a74ccceba', 'e798e2cb-6be1-466d-9a51-552763d7075d'),
('7c565c33-ba0f-4fde-8283-2f45bfa4b4f3', 'b6cd819d-7500-4b32-bd46-c7849173e752');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `AspNetUsers`
--

CREATE TABLE `AspNetUsers` (
  `Id` varchar(255) NOT NULL,
  `FirstName` longtext DEFAULT NULL,
  `LastName` longtext DEFAULT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `AspNetUsers`
--

INSERT INTO `AspNetUsers` (`Id`, `FirstName`, `LastName`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('20804009-3cf1-4be1-994f-542be50e63e4', 'Mike', 'Moore', 'mm@mm.mm', 'MM@MM.MM', 'mm@mm.mm', 'MM@MM.MM', 1, 'AQAAAAIAAYagAAAAECW2sCB/QZ2EXuxX4IRnYxtmdVCRo/3SutQFoXTkjF9rmO+SBvGTS3ljEc2+x5nP/A==', '649f62da-b594-4787-b026-46dfa8cad617', 'e2aa97a7-0f1b-4732-8ff2-aefa7a3609bc', NULL, 0, 0, NULL, 0, 0),
('270dcc55-b813-43dd-b60c-02585b9cda6e', 'Janusz', 'Wiercipięta', 'abc@gmail.com', 'ABC@GMAIL.COM', 'abc@gmail.com', 'ABC@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEHpbQ3jsoHtG7pcOLuBp6zwu/yXLA1yjIs2n+yK+3HDSbTRQGwZxBP0jyRHiDf6QpQ==', 'TV2S24ROTK3RFL7GRLSEOUQUTYS66J3F', '706bc032-4f95-4496-9454-d1fafaadaa72', NULL, 0, 0, NULL, 1, 0),
('302719d8-112c-4838-a0f8-ebad11955221', 'Adam', 'Atkins', 'aa@aa.aa', 'AA@AA.AA', 'aa@aa.aa', 'AA@AA.AA', 1, 'AQAAAAIAAYagAAAAEI1BiExmdGoSPtfJ/cA4vXbayUiI7cww2uh5Isp9d3pM2IUeqabL2Tek8zhPGQywYw==', '9bd4a96c-222b-408f-89b2-529da5617544', '6f3aa1b1-942e-4156-8688-3c1de3be2582', NULL, 0, 0, NULL, 0, 0),
('51f086ce-3846-474c-a67e-ba6a74ccceba', 'test', 'test', 'test@gmail.com', 'TEST@GMAIL.COM', 'test@gmail.com', 'TEST@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEDX6rU5jKBUQko6yi/Jx6OeiGX5EQrGrzU749y1PM5hG6Ce/gXrgPo/oPzZf6NNZbg==', 'LB5Y7BSVL2W652EZ2NWX4SRWH55OB2PJ', '54e40435-5214-4710-a836-13303b53570a', NULL, 0, 0, NULL, 1, 0),
('7c565c33-ba0f-4fde-8283-2f45bfa4b4f3', 'Szefu', 'Szefu', 'szefu@gmail.com', 'SZEFU@GMAIL.COM', 'szefu@gmail.com', 'SZEFU@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEFDqSwrRq3RxWpEFpkldk9m8ztJIQZPMx1xU4gOe29QDPHBekbjd5UKrMSexlq1BiA==', '4THN2Z7XWRX74XSSW4WI3SVXV2CZLXHJ', '9b930bcc-36c1-4e91-ad8d-0cdd01bb8e5f', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `AspNetUserTokens`
--

CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `SklepItems`
--

CREATE TABLE `SklepItems` (
  `ID` int(11) NOT NULL,
  `Item_Name` varchar(24) NOT NULL,
  `Item_Category` varchar(24) NOT NULL,
  `Item_Color` varchar(12) DEFAULT NULL,
  `Item_Sizes` enum('s','m','l','xl') DEFAULT NULL,
  `Item_Quantity` int(32) NOT NULL,
  `Item_Image` varchar(32) NOT NULL,
  `Item_Price` float NOT NULL,
  `Item_Description` text NOT NULL,
  `Item_Gender` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `SklepItems`
--

INSERT INTO `SklepItems` (`ID`, `Item_Name`, `Item_Category`, `Item_Color`, `Item_Sizes`, `Item_Quantity`, `Item_Image`, `Item_Price`, `Item_Description`, `Item_Gender`) VALUES
(1, 'Bluza Pies', 'Bluza', 'black', 'm', 1235, 'bluza.png', 1313.99, 'Ale fajne bluza z czegoś', 'Unisex'),
(2, 'Bluza Pies', 'Bluza', 'green', 's', 1234, 'bluza.png', 1313.99, 'Ale fajne bluza z czegoś', 'Unisex'),
(3, 'Bluza Pies', 'Bluza', 'grey', 'l', 1234, 'bluza.png', 1313, 'Ale fajne bluza z czegoś', 'Men'),
(4, 'Bluza Kot', 'Bluza', 'violet', 'm', 1234, 'bluza.png', 1313, 'Ale fajne bluza z czegoś', 'Woman'),
(5, 'Bluza Kot', 'Bluza', 'black', 'l', 1234, 'bluza.png', 1313, 'Ale fajne bluza z czegoś', 'Men'),
(6, 'Bluza Słoń', 'Bluza', 'red', 'm', 1234, 'bluza.png', 1313.99, 'Ale fajne bluza z czegoś', 'Woman'),
(7, 'Bluza Pająk', 'Bluza', 'violet', 'm', 1234, 'bluza.png', 1313, 'Ale fajne bluza z czegoś', 'Unisex'),
(8, 'Bluza Koń', 'Bluza', 'black', 'm', 1234, 'bluza.png', 1313, 'Ale fajne bluza z czegoś', 'Unisex'),
(9, 'Bluza Pies', 'Bluza', 'red', 'xl', 1234, 'bluza.png', 1313, 'Ale fajne bluza z czegoś', 'Men'),
(10, 'Longsleeve z Kartami', 'Longsleeve', 'red', 'l', 15, 'longsleeve.png', 129.99, 'Długi rękaw z kartami na plecach bawełenka tego', 'Men'),
(11, 'Longsleeve z Kartami', 'Longsleeve', 'red', 'l', 15, 'longsleeve.png', 129.99, 'Długi rękaw z kartami na plecach bawełenka tego', 'Woman'),
(12, 'T-Shirt Clean', 'T-Shirt', 'White', 's', 229, 'T-Shirt.png', 99.99, 'No ta coś tu będzie', 'Unisex'),
(13, 'T-Shirt Clean', 'T-Shirt', 'White', 'm', 229, 'T-Shirt.png', 99.99, 'No ta coś tu będzie', 'Unisex'),
(14, 'T-Shirt Clean', 'T-Shirt', 'White', 'l', 229, 'T-Shirt.png', 99.99, 'No ta coś tu będzie', 'Unisex'),
(15, 'T-Shirt Clean', 'T-Shirt', 'red', 'xl', 0, 'T-Shirt.png', 99.99, 'No ta coś tu będzie', 'Unisex');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20230323132733_Auth', '7.0.4'),
('20230323135802_m1', '7.0.4');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indeksy dla tabeli `AspNetRoles`
--
ALTER TABLE `AspNetRoles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indeksy dla tabeli `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indeksy dla tabeli `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indeksy dla tabeli `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indeksy dla tabeli `AspNetUsers`
--
ALTER TABLE `AspNetUsers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indeksy dla tabeli `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indeksy dla tabeli `SklepItems`
--
ALTER TABLE `SklepItems`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `SklepItems`
--
ALTER TABLE `SklepItems`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
