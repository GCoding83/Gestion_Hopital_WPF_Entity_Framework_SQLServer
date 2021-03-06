USE [master]
GO
/****** Object:  Database [NorthernLightsHospital]    Script Date: 2020-03-30 21:02:50 ******/
CREATE DATABASE [NorthernLightsHospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NorthernLightsHospital', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NorthernLightsHospital.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NorthernLightsHospital_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NorthernLightsHospital_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NorthernLightsHospital] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NorthernLightsHospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NorthernLightsHospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NorthernLightsHospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NorthernLightsHospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NorthernLightsHospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NorthernLightsHospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NorthernLightsHospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET RECOVERY FULL 
GO
ALTER DATABASE [NorthernLightsHospital] SET  MULTI_USER 
GO
ALTER DATABASE [NorthernLightsHospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NorthernLightsHospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NorthernLightsHospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NorthernLightsHospital] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NorthernLightsHospital', N'ON'
GO
USE [NorthernLightsHospital]
GO
/****** Object:  Table [dbo].[Compagnie_Assurance]    Script Date: 2020-03-30 21:02:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compagnie_Assurance](
	[idCompagnie] [int] IDENTITY(1,1) NOT NULL,
	[nomCompagnie] [varchar](30) NULL,
 CONSTRAINT [PK__COMPAGNI__B3B61EE4B90CA087] PRIMARY KEY CLUSTERED 
(
	[idCompagnie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departement]    Script Date: 2020-03-30 21:02:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departement](
	[idDepartement] [int] IDENTITY(1,1) NOT NULL,
	[nomDepartement] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDepartement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dossier_Admission]    Script Date: 2020-03-30 21:02:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dossier_Admission](
	[idDossier] [int] IDENTITY(1,1) NOT NULL,
	[chirurgieProgrammee] [bit] NULL,
	[dateChirurgie] [date] NULL,
	[dateConge] [date] NULL,
	[nasPatient] [int] NOT NULL,
	[noLit] [int] NULL,
	[idMedecin] [int] NULL,
	[dateAdmission] [date] NULL,
	[television] [bit] NULL,
	[telephone] [bit] NULL,
	[litPayant] [bit] NULL,
 CONSTRAINT [PK__DOSSIER___43081945C1D9DFE9] PRIMARY KEY CLUSTERED 
(
	[idDossier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lit]    Script Date: 2020-03-30 21:02:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lit](
	[noLit] [int] IDENTITY(1,1) NOT NULL,
	[occupe] [bit] NULL,
	[noTypeLit] [int] NOT NULL,
	[idDepartement] [int] NOT NULL,
 CONSTRAINT [PK__LIT__FE931AD4F6F016F4] PRIMARY KEY CLUSTERED 
(
	[noLit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medecin]    Script Date: 2020-03-30 21:02:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medecin](
	[idMedecin] [int] IDENTITY(1,1) NOT NULL,
	[nomMedecin] [varchar](30) NOT NULL,
	[prenomMedecin] [varchar](30) NOT NULL,
	[specialiteMedecin] [varchar](30) NULL,
	[departementMedecin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedecin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 2020-03-30 21:02:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parent](
	[idParent] [int] IDENTITY(1,1) NOT NULL,
	[nomParent] [varchar](30) NOT NULL,
	[prenomParent] [varchar](30) NOT NULL,
	[adresseParent] [varchar](30) NULL,
	[villeParent] [varchar](30) NULL,
	[provinceParent] [varchar](30) NULL,
	[cpParent] [varchar](30) NULL,
	[noTelParent] [varchar](30) NULL,
	[refPatient] [int] NOT NULL,
 CONSTRAINT [PK_Parent] PRIMARY KEY CLUSTERED 
(
	[idParent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 2020-03-30 21:02:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient](
	[idPatient] [int] NOT NULL,
	[dateNaissancePatient] [date] NOT NULL,
	[nomPatient] [varchar](30) NOT NULL,
	[prenomPatient] [varchar](30) NOT NULL,
	[adressePatient] [varchar](30) NULL,
	[villePatient] [varchar](30) NULL,
	[provincePatient] [varchar](30) NULL,
	[cpPatient] [varchar](30) NULL,
	[noTelPatient] [varchar](30) NULL,
	[idCompagnie] [int] NULL,
	[typeLitPrefere] [int] NULL,
 CONSTRAINT [PK__PATIENT__8C24280582101551] PRIMARY KEY CLUSTERED 
(
	[idPatient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Type_Lit]    Script Date: 2020-03-30 21:02:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Type_Lit](
	[idTypeLit] [int] IDENTITY(1,1) NOT NULL,
	[descTypeLit] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTypeLit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Compagnie_Assurance] ON 

INSERT [dbo].[Compagnie_Assurance] ([idCompagnie], [nomCompagnie]) VALUES (1, N'AssuranceSuper')
INSERT [dbo].[Compagnie_Assurance] ([idCompagnie], [nomCompagnie]) VALUES (2, N'YourCashOurCash')
SET IDENTITY_INSERT [dbo].[Compagnie_Assurance] OFF
SET IDENTITY_INSERT [dbo].[Departement] ON 

INSERT [dbo].[Departement] ([idDepartement], [nomDepartement]) VALUES (1, N'Chirurgie')
INSERT [dbo].[Departement] ([idDepartement], [nomDepartement]) VALUES (2, N'Pediatrie')
INSERT [dbo].[Departement] ([idDepartement], [nomDepartement]) VALUES (3, N'Urgence')
SET IDENTITY_INSERT [dbo].[Departement] OFF
SET IDENTITY_INSERT [dbo].[Dossier_Admission] ON 

INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (23, 1, CAST(N'2020-03-03' AS Date), CAST(N'2020-03-04' AS Date), 123456789, 3, 4, CAST(N'2020-03-03' AS Date), 1, NULL, NULL)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (24, 0, NULL, CAST(N'2020-03-04' AS Date), 888888888, 6, NULL, CAST(N'2020-03-03' AS Date), NULL, NULL, NULL)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (25, 0, NULL, CAST(N'2020-03-08' AS Date), 987654321, 8, 2, CAST(N'2020-03-03' AS Date), NULL, 1, NULL)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (26, 0, NULL, CAST(N'2020-03-04' AS Date), 333444666, 7, 14, CAST(N'2020-03-04' AS Date), 1, NULL, 1)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (1026, 0, NULL, CAST(N'2020-03-04' AS Date), 123454321, 1008, 2, CAST(N'2020-03-04' AS Date), 1, 1, 1)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (1027, 0, NULL, CAST(N'2020-03-05' AS Date), 987656789, 7, 2, CAST(N'2020-03-04' AS Date), 1, 1, 1)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (1028, 0, NULL, CAST(N'2020-03-04' AS Date), 888888888, 6, NULL, CAST(N'2020-03-04' AS Date), 1, NULL, 0)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (1029, 0, NULL, CAST(N'2020-03-08' AS Date), 123456789, 9, 4, CAST(N'2020-03-05' AS Date), NULL, NULL, 0)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (2027, 0, NULL, NULL, 123454321, 1008, 14, CAST(N'2020-03-05' AS Date), 1, 1, 1)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (2028, 0, NULL, CAST(N'2020-03-09' AS Date), 987656789, 7, 13, CAST(N'2020-03-05' AS Date), NULL, 1, 1)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (2029, 0, NULL, NULL, 333444666, 1007, 14, CAST(N'2020-03-05' AS Date), 1, 1, 1)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (2030, 0, NULL, CAST(N'2020-03-09' AS Date), 888888888, 6, NULL, CAST(N'2020-03-05' AS Date), NULL, 1, 0)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (3026, 0, NULL, NULL, 789789789, 4, 2016, CAST(N'2020-03-11' AS Date), NULL, 1, 0)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (4026, 0, NULL, NULL, 123456789, 13, 4, CAST(N'2020-03-11' AS Date), NULL, 1, 1)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (4027, 0, NULL, NULL, 656656656, 1, 2, CAST(N'2020-03-11' AS Date), NULL, NULL, 0)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (5026, 0, NULL, CAST(N'2020-03-30' AS Date), 345345345, 1009, NULL, CAST(N'2020-03-11' AS Date), NULL, 1, 0)
INSERT [dbo].[Dossier_Admission] ([idDossier], [chirurgieProgrammee], [dateChirurgie], [dateConge], [nasPatient], [noLit], [idMedecin], [dateAdmission], [television], [telephone], [litPayant]) VALUES (6026, 0, NULL, NULL, 823493849, 5, 2, CAST(N'2020-03-30' AS Date), NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Dossier_Admission] OFF
SET IDENTITY_INSERT [dbo].[Lit] ON 

INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (2, 0, 2, 1)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (3, 0, 3, 1)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (4, 1, 1, 2)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (5, 1, 2, 2)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (6, 0, 3, 2)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (7, 0, 1, 3)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (8, 0, 2, 3)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (9, 0, 3, 3)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (13, 1, 1, 1)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (14, 0, 2, 1)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (15, 0, 3, 1)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (16, 0, 1, 2)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (20, 0, 2, 2)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (1006, 0, 3, 2)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (1007, 1, 1, 3)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (1008, 1, 2, 3)
INSERT [dbo].[Lit] ([noLit], [occupe], [noTypeLit], [idDepartement]) VALUES (1009, 0, 3, 3)
SET IDENTITY_INSERT [dbo].[Lit] OFF
SET IDENTITY_INSERT [dbo].[Medecin] ON 

INSERT [dbo].[Medecin] ([idMedecin], [nomMedecin], [prenomMedecin], [specialiteMedecin], [departementMedecin]) VALUES (2, N'Chabot', N'Raymond', N'Gastro-Enterologie', 1)
INSERT [dbo].[Medecin] ([idMedecin], [nomMedecin], [prenomMedecin], [specialiteMedecin], [departementMedecin]) VALUES (4, N'Bellal', N'Toufik', N'Dentiste', 2)
INSERT [dbo].[Medecin] ([idMedecin], [nomMedecin], [prenomMedecin], [specialiteMedecin], [departementMedecin]) VALUES (13, N'Wainwright', N'Rufus', N'Pediatre', 1)
INSERT [dbo].[Medecin] ([idMedecin], [nomMedecin], [prenomMedecin], [specialiteMedecin], [departementMedecin]) VALUES (14, N'Gratton', N'Elvis', N'Generaliste', 3)
INSERT [dbo].[Medecin] ([idMedecin], [nomMedecin], [prenomMedecin], [specialiteMedecin], [departementMedecin]) VALUES (2016, N'Arruda', N'Horacio', N'Epidemiologiste', 2)
SET IDENTITY_INSERT [dbo].[Medecin] OFF
SET IDENTITY_INSERT [dbo].[Parent] ON 

INSERT [dbo].[Parent] ([idParent], [nomParent], [prenomParent], [adresseParent], [villeParent], [provinceParent], [cpParent], [noTelParent], [refPatient]) VALUES (1, N'Marley', N'Raymonde', N'Buffalo Street', N'Jamaica', N'Manitoba', N'H6H7H8', N'740-345-2938', 123456789)
SET IDENTITY_INSERT [dbo].[Parent] OFF
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (111222333, CAST(N'1961-02-20' AS Date), N'Jackson', N'Michael', N'Neverland', N'Someplace', N'Saskatchewan', N'G6T7J8', N'7778883345', NULL, NULL)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (123454321, CAST(N'1961-06-15' AS Date), N'T', N'Mr.', N'', N'', N'', N'', N'', NULL, 2)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (123456789, CAST(N'1954-02-20' AS Date), N'Marley', N'Bob', N'Test', N'Test', N'Québec', N'G6Y7r9', N'5149893848', NULL, NULL)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (271394739, CAST(N'1983-12-09' AS Date), N'Shakur', N'Tupac', N'123 Thug Street', N'Toronto', N'Ontario', N'H1R9U7', N'647-230-2938', 2, 1)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (273846936, CAST(N'1979-09-03' AS Date), N'Yeltsin', N'Boris', N'Kremlin', N'Moscou', N'Yukon', N'H8H9T9', N'777-223-4050', 2, 2)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (333444666, CAST(N'1963-02-12' AS Date), N'Sandler', N'Adam', N'', N'', N'Colombie-Britannique', N'', N'', NULL, 1)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (345345345, CAST(N'1964-10-23' AS Date), N'Hart', N'Bret', N'Dungeon', N'Calgary', N'Alberta', N'I7Y5T8', N'678-394-2945', 1, 1)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (384629472, CAST(N'1964-06-16' AS Date), N'Austin', N'Steve', N'Hell Yeah', N'Austin', N'Manitoba', N'G7T8T6', N'345-384-3944', 1, 2)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (444444444, CAST(N'1965-07-13' AS Date), N'Jordan', N'Michael', N'', N'', N'', N'', N'', NULL, 1)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (555555555, CAST(N'2006-10-05' AS Date), N'Tremblay', N'Jacob', N'SomePlace', N'Vancouver', N'Colombie-Britannique', N'U6T8Y5', N'888-283-2837', NULL, 3)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (555666777, CAST(N'1949-11-23' AS Date), N'McCartney', N'Paul', N'Abbey Road', N'Liverpool', N'Nouveau-Brunswick', N'Y6T8Y7', N'998-234-4958', NULL, NULL)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (637484938, CAST(N'1949-07-21' AS Date), N'Fruitier', N'Edgar', N'67 La Poune', N'Montreal', N'Québec', N'H5R7Y8', N'514-232-3849', 2, 2)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (656656656, CAST(N'1985-07-17' AS Date), N'Bah', N'Thierno', N'', N'', N'Manitoba', N'', N'', 2, 1)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (666777888, CAST(N'1945-07-12' AS Date), N'Wayne', N'Bruce', N'Manoir', N'Gotham', N'Nouveau-Brunswick', N'T5Y8Y5', N'364-453-4953', 2, 2)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (739103748, CAST(N'1948-05-02' AS Date), N'John', N'Elton', N'111 Yellow Brick Road', N'Vancouver', N'Colombie-Britannique', N'R8W9Y7', N'233-938-123', 1, 1)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (789789789, CAST(N'2020-03-04' AS Date), N'Sinatra', N'Frank', N'NY Street', N'NYC', N'Ontario', N'G5R7Y6', N'333-453-4523', 1, 1)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (823493849, CAST(N'2020-03-10' AS Date), N'Croteau', N'Jimmy', N'', N'', N'Nouveau-Brunswick', N'', N'', 2, 2)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (848473847, CAST(N'1955-07-07' AS Date), N'Hogan', N'Hulk', N'Hollywood', N'Hollywood', N'Québec', N'H7H7G6', N'444-595-4932', NULL, NULL)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (888888888, CAST(N'2020-02-12' AS Date), N'Bebe', N'Naissant', N'Pouponniere', N'Montreal', N'Québec', N'H3R6Y8', N'514-234-2938', NULL, NULL)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (893748349, CAST(N'1964-08-26' AS Date), N'Balboa', N'Rocky', N'Phlly Street', N'Philadelphia', N'Manitoba', N'H8T3R5', N'873-293-492', 1, 2)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (948264018, CAST(N'1981-03-20' AS Date), N'Smalls', N'Biggie', N'9823 des Faubourgs', N'Montreal', N'Quebec', N'H4U7F3', N'514-230-9384', 1, 1)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (987654321, CAST(N'1976-07-14' AS Date), N'Matters', N'Marshall', N'8-Mile Road', N'Detroit', N'Colombie-Britannique', N'T5T-8Y6', N'313-293-2839', 2, 2)
INSERT [dbo].[Patient] ([idPatient], [dateNaissancePatient], [nomPatient], [prenomPatient], [adressePatient], [villePatient], [provincePatient], [cpPatient], [noTelPatient], [idCompagnie], [typeLitPrefere]) VALUES (987656789, CAST(N'1955-01-03' AS Date), N'The Butcher', N'Abdullah', N'', N'', N'', N'', N'', NULL, 1)
SET IDENTITY_INSERT [dbo].[Type_Lit] ON 

INSERT [dbo].[Type_Lit] ([idTypeLit], [descTypeLit]) VALUES (1, N'Prive')
INSERT [dbo].[Type_Lit] ([idTypeLit], [descTypeLit]) VALUES (2, N'Semi-Prive')
INSERT [dbo].[Type_Lit] ([idTypeLit], [descTypeLit]) VALUES (3, N'Standard')
SET IDENTITY_INSERT [dbo].[Type_Lit] OFF
ALTER TABLE [dbo].[Dossier_Admission]  WITH CHECK ADD  CONSTRAINT [FK_DOSSIER_ADMISSION_LIT] FOREIGN KEY([noLit])
REFERENCES [dbo].[Lit] ([noLit])
GO
ALTER TABLE [dbo].[Dossier_Admission] CHECK CONSTRAINT [FK_DOSSIER_ADMISSION_LIT]
GO
ALTER TABLE [dbo].[Dossier_Admission]  WITH CHECK ADD  CONSTRAINT [FK_DOSSIER_ADMISSION_MEDECIN] FOREIGN KEY([idMedecin])
REFERENCES [dbo].[Medecin] ([idMedecin])
GO
ALTER TABLE [dbo].[Dossier_Admission] CHECK CONSTRAINT [FK_DOSSIER_ADMISSION_MEDECIN]
GO
ALTER TABLE [dbo].[Dossier_Admission]  WITH CHECK ADD  CONSTRAINT [FK_DOSSIER_ADMISSION_PATIENT] FOREIGN KEY([nasPatient])
REFERENCES [dbo].[Patient] ([idPatient])
GO
ALTER TABLE [dbo].[Dossier_Admission] CHECK CONSTRAINT [FK_DOSSIER_ADMISSION_PATIENT]
GO
ALTER TABLE [dbo].[Lit]  WITH CHECK ADD  CONSTRAINT [FK_LIT_DEPARTEMENT] FOREIGN KEY([idDepartement])
REFERENCES [dbo].[Departement] ([idDepartement])
GO
ALTER TABLE [dbo].[Lit] CHECK CONSTRAINT [FK_LIT_DEPARTEMENT]
GO
ALTER TABLE [dbo].[Lit]  WITH CHECK ADD  CONSTRAINT [FK_LIT_TYPE_LIT] FOREIGN KEY([noTypeLit])
REFERENCES [dbo].[Type_Lit] ([idTypeLit])
GO
ALTER TABLE [dbo].[Lit] CHECK CONSTRAINT [FK_LIT_TYPE_LIT]
GO
ALTER TABLE [dbo].[Medecin]  WITH CHECK ADD  CONSTRAINT [FK_Medecin_Departement] FOREIGN KEY([departementMedecin])
REFERENCES [dbo].[Departement] ([idDepartement])
GO
ALTER TABLE [dbo].[Medecin] CHECK CONSTRAINT [FK_Medecin_Departement]
GO
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Patient] FOREIGN KEY([refPatient])
REFERENCES [dbo].[Patient] ([idPatient])
GO
ALTER TABLE [dbo].[Parent] CHECK CONSTRAINT [FK_Parent_Patient]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_PATIENT_COMPAGNIE_ASSURANCE] FOREIGN KEY([idCompagnie])
REFERENCES [dbo].[Compagnie_Assurance] ([idCompagnie])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_PATIENT_COMPAGNIE_ASSURANCE]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Type_Lit_Prefere] FOREIGN KEY([typeLitPrefere])
REFERENCES [dbo].[Type_Lit] ([idTypeLit])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Type_Lit_Prefere]
GO
USE [master]
GO
ALTER DATABASE [NorthernLightsHospital] SET  READ_WRITE 
GO
