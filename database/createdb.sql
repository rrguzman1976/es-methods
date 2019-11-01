USE master;
GO

IF NOT EXISTS (SELECT * FROM sys.databases
                WHERE name = N'DS9')
    CREATE DATABASE DS9;
GO

USE DS9;
GO

IF EXISTS (SELECT   *
            FROM    sys.schemas
            WHERE   name = N'landgrid')
    DROP SCHEMA landgrid;
GO

CREATE SCHEMA [landgrid]
GO

IF EXISTS (SELECT   *
            FROM    sys.schemas
            WHERE   name = N'landgriderror')
    DROP SCHEMA landgriderror;
GO

CREATE SCHEMA [landgriderror]
GO

IF OBJECT_ID(N'landgrid.County', N'U') IS NOT NULL
    DROP TABLE [landgrid].[County];
GO

CREATE TABLE [landgrid].[County] 
(
	[CountyId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NOT NULL,
	[State] [nvarchar](max) NULL,
	[StateName] [nvarchar](max) NULL,
	[StateDiv1Id] [int] NULL,
	[StateFips] [int] NULL,
	[StateApi] [int] NULL,
	[CountyName] [nvarchar](max) NULL,
	[CountyDiv1Id] [int] NULL,
	[CountyFips] [int] NULL,
	[CountyApi] [int] NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgriderror.County', N'U') IS NOT NULL
    DROP TABLE [landgriderror].[County];
GO

CREATE TABLE [landgriderror].[County] 
(
	[CountyId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NOT NULL,
	[State] [nvarchar](max) NULL,
	[StateName] [nvarchar](max) NULL,
	[StateDiv1Id] [int] NULL,
	[StateFips] [int] NULL,
	[StateApi] [int] NULL,
	[CountyName] [nvarchar](max) NULL,
	[CountyDiv1Id] [int] NULL,
	[CountyFips] [int] NULL,
	[CountyApi] [int] NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgrid.PlssSection', N'U') IS NOT NULL
    DROP TABLE [landgrid].[PlssSection];
GO

CREATE TABLE [landgrid].[PlssSection] 
(
	[PlssSectionId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NULL,
	[MeridianCode] [nvarchar](max) NULL,
	[MeridianName] [nvarchar](max) NULL,
	[StateOverlaps] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[StateDiv1Id] [int] NULL,
	[StateApi] [int] NULL,
	[CountyOverlaps] [nvarchar](max) NULL,
	[CountyDiv1Id] [int] NULL,
	[TownshipCode] [nvarchar](max) NULL,
	[Township] [nvarchar](max) NULL,
	[TownshipId] [int] NULL,
	[TownshipHalf] [int] NULL,
	[TownshipNorthSouth] [nvarchar](max) NULL,
	[Range] [nvarchar](max) NULL,
	[RangeId] [int] NULL,
	[RangeHalf] [int] NULL,
	[RangeEastWest] [nvarchar](max) NULL,
	[SectionCode] [nvarchar](max) NULL,
	[SectionDiv1Code] [nvarchar](max) NULL,
	[Section] [int] NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgriderror.PlssSection', N'U') IS NOT NULL
    DROP TABLE [landgriderror].[PlssSection];
GO

CREATE TABLE [landgriderror].[PlssSection] 
(
	[PlssSectionId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NULL,
	[MeridianCode] [nvarchar](max) NULL,
	[MeridianName] [nvarchar](max) NULL,
	[StateOverlaps] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[StateDiv1Id] [int] NULL,
	[StateApi] [int] NULL,
	[CountyOverlaps] [nvarchar](max) NULL,
	[CountyDiv1Id] [int] NULL,
	[TownshipCode] [nvarchar](max) NULL,
	[Township] [nvarchar](max) NULL,
	[TownshipId] [int] NULL,
	[TownshipHalf] [int] NULL,
	[TownshipNorthSouth] [nvarchar](max) NULL,
	[Range] [nvarchar](max) NULL,
	[RangeId] [int] NULL,
	[RangeHalf] [int] NULL,
	[RangeEastWest] [nvarchar](max) NULL,
	[SectionCode] [nvarchar](max) NULL,
	[SectionDiv1Code] [nvarchar](max) NULL,
	[Section] [int] NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgrid.PlssTownship', N'U') IS NOT NULL
    DROP TABLE [landgrid].[PlssTownship];
GO

CREATE TABLE [landgrid].[PlssTownship] 
(
	[PlssTownshipId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NULL,
	[MeridianCode] [nvarchar](max) NULL,
	[MeridianName] [nvarchar](max) NULL,
	[StateOverlaps] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[CountyOverlaps] [nvarchar](max) NULL,
	[TownshipCode] [nvarchar](max) NULL,
	[TownshipLabel] [nvarchar](max) NULL,
	[Township] [nvarchar](max) NULL,
	[TownshipId] [int] NULL,
	[TownshipHalf] [int] NULL,
	[TownshipNorthSouth] [nvarchar](max) NULL,
	[Range] [nvarchar](max) NULL,
	[RangeId] [int] NULL,
	[RangeHalf] [int] NULL,
	[RangeEastWest] [nvarchar](max) NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgriderror.PlssTownship', N'U') IS NOT NULL
    DROP TABLE [landgriderror].[PlssTownship];
GO

CREATE TABLE [landgriderror].[PlssTownship] 
(
	[PlssTownshipId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NULL,
	[MeridianCode] [nvarchar](max) NULL,
	[MeridianName] [nvarchar](max) NULL,
	[StateOverlaps] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[CountyOverlaps] [nvarchar](max) NULL,
	[TownshipCode] [nvarchar](max) NULL,
	[TownshipLabel] [nvarchar](max) NULL,
	[Township] [nvarchar](max) NULL,
	[TownshipId] [int] NULL,
	[TownshipHalf] [int] NULL,
	[TownshipNorthSouth] [nvarchar](max) NULL,
	[Range] [nvarchar](max) NULL,
	[RangeId] [int] NULL,
	[RangeHalf] [int] NULL,
	[RangeEastWest] [nvarchar](max) NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgrid.State', N'U') IS NOT NULL
    DROP TABLE [landgrid].[State];
GO

CREATE TABLE [landgrid].[State] 
(
	[StateId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NOT NULL,
	[State] [nvarchar](max) NULL,
	[StateName] [nvarchar](max) NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgriderror.State', N'U') IS NOT NULL
    DROP TABLE [landgriderror].[State];
GO

CREATE TABLE [landgriderror].[State] 
(
	[StateId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NOT NULL,
	[State] [nvarchar](max) NULL,
	[StateName] [nvarchar](max) NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgrid.TexasAbstract', N'U') IS NOT NULL
    DROP TABLE [landgrid].[TexasAbstract];
GO

CREATE TABLE [landgrid].[TexasAbstract] 
(
	[TexasAbstractId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NULL,
	[StateOverlaps] [nvarchar](max) NULL,
	[CountyOverlaps] [nvarchar](max) NULL,
	[County] [nvarchar](max) NULL,
	[CountyFips] [nvarchar](max) NULL,
	[Township] [nvarchar](max) NULL,
	[Section] [nvarchar](max) NULL,
	[Block] [nvarchar](max) NULL,
	[Abstract] [nvarchar](max) NULL,
	[AbstractName] [nvarchar](max) NULL,
	[AbstractNameAlt] [nvarchar](max) NULL,
	[FormNumber] [nvarchar](max) NULL,
	[ControlNumber] [nvarchar](max) NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgriderror.TexasAbstract', N'U') IS NOT NULL
    DROP TABLE [landgriderror].[TexasAbstract];
GO

CREATE TABLE [landgriderror].[TexasAbstract] 
(
	[TexasAbstractId] [int] IDENTITY(1,1) PRIMARY KEY,
	[ObjectId] [int] NULL,
	[StateOverlaps] [nvarchar](max) NULL,
	[CountyOverlaps] [nvarchar](max) NULL,
	[County] [nvarchar](max) NULL,
	[CountyFips] [nvarchar](max) NULL,
	[Township] [nvarchar](max) NULL,
	[Section] [nvarchar](max) NULL,
	[Block] [nvarchar](max) NULL,
	[Abstract] [nvarchar](max) NULL,
	[AbstractName] [nvarchar](max) NULL,
	[AbstractNameAlt] [nvarchar](max) NULL,
	[FormNumber] [nvarchar](max) NULL,
	[ControlNumber] [nvarchar](max) NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgriderror.TexasBlock', N'U') IS NOT NULL
    DROP TABLE [landgrid].[TexasBlock];
GO

CREATE TABLE [landgrid].[TexasBlock] 
(
	[TexasBlockId] [int] IDENTITY(1,1) PRIMARY KEY,
	[StateOverlaps] [nvarchar](max) NULL,
	[CountyOverlaps] [nvarchar](max) NULL,
	[Block] [nvarchar](max) NULL,
	[Township] [nvarchar](max) NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgriderror.TexasBlock', N'U') IS NOT NULL
    DROP TABLE [landgriderror].[TexasBlock];
GO

CREATE TABLE [landgriderror].[TexasBlock] 
(
	[TexasBlockId] [int] IDENTITY(1,1) PRIMARY KEY,
	[StateOverlaps] [nvarchar](max) NULL,
	[CountyOverlaps] [nvarchar](max) NULL,
	[Block] [nvarchar](max) NULL,
	[Township] [nvarchar](max) NULL,
	[BoundsGeoShape] [nvarchar](max) NULL,
	[Geography] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF OBJECT_ID(N'landgrid.vLandGrid', N'V') IS NOT NULL
    DROP TABLE [landgrid].[vLandGrid];
GO

CREATE VIEW [landgrid].[vLandGrid] AS
	SELECT 'State' AS [Type],
	       0 AS [Error],
	       [StateId] AS [Id],
	       NULL AS [Meridian],
	       [State],
	       NULL AS [County],
	       NULL AS [Township],
	       NULL AS [Range],
	       NULL AS [Section],
	       NULL AS [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgrid].[State]
UNION
	SELECT 'State' AS [Type],
	       1 AS [Error],
	       [StateId] AS [Id],
	       NULL AS [Meridian],
	       [State],
	       NULL AS [County],
	       NULL AS [Township],
	       NULL AS [Range],
	       NULL AS [Section],
	       NULL AS [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgriderror].[State]
UNION
	SELECT 'County' AS [Type],
	       0 AS [Error],
	       [CountyId] AS [Id],
	       NULL AS [Meridian],
	       [State],
	       [CountyName] AS [County],
	       NULL AS [Township],
	       NULL AS [Range],
	       NULL AS [Section],
	       NULL AS [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgrid].[County]
UNION
	SELECT 'County' AS [Type],
	       1 AS [Error],
	       [CountyId] AS [Id],
	       NULL AS [Meridian],
	       [State],
	       [CountyName] AS [County],
	       NULL AS [Township],
	       NULL AS [Range],
	       NULL AS [Section],
	       NULL AS [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgriderror].[County]
UNION
	SELECT 'Township' AS [Type],
	       0 AS [Error],
	       [PlssTownshipId] AS [Id],
	       [MeridianName] AS [Meridian],
	       [StateOverlaps] AS [State],
	       [CountyOverlaps] AS [County],
	       [Township],
	       [Range],
	       NULL AS [Section],
	       NULL AS [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgrid].[PlssTownship]
UNION
	SELECT 'Township' AS [Type],
	       1 AS [Error],
	       [PlssTownshipId] AS [Id],
	       [MeridianName] AS [Meridian],
	       [StateOverlaps] AS [State],
	       [CountyOverlaps] AS [County],
	       [Township],
	       [Range],
	       NULL AS [Section],
	       NULL AS [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgriderror].[PlssTownship]
UNION
	SELECT 'Section' AS [Type],
	       0 AS [Error],
	       [PlssSectionId] AS [Id],
	       [MeridianName] AS [Meridian],
	       [StateOverlaps] AS [State],
	       [CountyOverlaps] AS [County],
	       [Township],
	       [Range],
	       CAST([Section] AS NVARCHAR) AS [Section],
	       NULL AS [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgrid].[PlssSection]
UNION
	SELECT 'Section' AS [Type],
	       1 AS [Error],
	       [PlssSectionId] AS [Id],
	       [MeridianName] AS [Meridian],
	       [StateOverlaps] AS [State],
	       [CountyOverlaps] AS [County],
	       [Township],
	       [Range],
	       CAST([Section] AS NVARCHAR) AS [Section],
	       NULL AS [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgriderror].[PlssSection]
UNION
	SELECT 'Abstract' AS [Type],
	       0 AS [Error],
	       [TexasAbstractId] AS [Id],
	       NULL AS [Meridian],
	       [StateOverlaps] AS [State],
	       [CountyOverlaps] AS [County],
	       [Township],
	       NULL AS [Range],
	       [Section],
	       [Block],
	       [Abstract],
	       [BoundsGeoShape]
	  FROM [landgrid].[TexasAbstract]
UNION
	SELECT 'Abstract' AS [Type],
	       1 AS [Error],
	       [TexasAbstractId] AS [Id],
	       NULL AS [Meridian],
	       [StateOverlaps] AS [State],
	       [CountyOverlaps] AS [County],
	       [Township],
	       NULL AS [Range],
	       [Section],
	       [Block],
	       [Abstract],
	       [BoundsGeoShape]
	  FROM [landgriderror].[TexasAbstract]
UNION
	SELECT 'Block' AS [Type],
	       0 AS [Error],
	       [TexasBlockId] AS [Id],
	       NULL AS [Meridian],
	       [StateOverlaps] AS [State],
	       [CountyOverlaps] AS [County],
	       [Township],
	       NULL AS [Range],
	       NULL AS [Section],
	       [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgrid].[TexasBlock]
UNION
	SELECT 'Block' AS [Type],
	       1 AS [Error],
	       [TexasBlockId] AS [Id],
	       NULL AS [Meridian],
	       [StateOverlaps] AS [State],
	       [CountyOverlaps] AS [County],
	       [Township],
	       NULL AS [Range],
	       NULL AS [Section],
	       [Block],
	       NULL AS [Abstract],
	       [BoundsGeoShape]
	  FROM [landgriderror].[TexasBlock]
GO