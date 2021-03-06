/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [GroupTasks]    Script Date: 1/31/2020 6:14:03 AM ******/
CREATE DATABASE [GroupTasks]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GroupTasks', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GroupTasks.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GroupTasks_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GroupTasks_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GroupTasks] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GroupTasks].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GroupTasks] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GroupTasks] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GroupTasks] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GroupTasks] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GroupTasks] SET ARITHABORT OFF 
GO
ALTER DATABASE [GroupTasks] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GroupTasks] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GroupTasks] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GroupTasks] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GroupTasks] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GroupTasks] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GroupTasks] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GroupTasks] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GroupTasks] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GroupTasks] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GroupTasks] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GroupTasks] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GroupTasks] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GroupTasks] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GroupTasks] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GroupTasks] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GroupTasks] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GroupTasks] SET RECOVERY FULL 
GO
ALTER DATABASE [GroupTasks] SET  MULTI_USER 
GO
ALTER DATABASE [GroupTasks] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GroupTasks] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GroupTasks] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GroupTasks] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GroupTasks] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GroupTasks', N'ON'
GO
ALTER DATABASE [GroupTasks] SET QUERY_STORE = OFF
GO
USE [GroupTasks]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tProjectAdmins]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProjectAdmins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_tProjectAdmins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tProjects]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProjects](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nchar](100) NOT NULL,
	[StartDate] [datetime] NULL,
	[Deadline] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ToStartDate] [datetime] NULL,
	[Description] [nchar](1000) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tProjects] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tProjectTasks]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProjectTasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[TaskId] [int] NOT NULL,
 CONSTRAINT [PK_tProjectTasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTasks]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTasks](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[TaskName] [nchar](100) NOT NULL,
	[StartDate] [datetime] NULL,
	[Deadline] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ToStartDate] [datetime] NULL,
	[Description] [nchar](1000) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tTasks] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTaskStatuses]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTaskStatuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskId] [int] NOT NULL,
	[TaskStatusId] [int] NOT NULL,
 CONSTRAINT [PK_tTaskStatuses_] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTaskStatusHistory]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTaskStatusHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskId] [int] NOT NULL,
	[FromStatus] [int] NOT NULL,
	[ToStatus] [int] NOT NULL,
	[DateTimeChanged] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tTaskStatusHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTaskStatusMap]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTaskStatusMap](
	[TaskStatusId] [int] IDENTITY(1,1) NOT NULL,
	[TaskStatusName] [nchar](100) NOT NULL,
 CONSTRAINT [PK_tTaskStatuses] PRIMARY KEY CLUSTERED 
(
	[TaskStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTasksUsersMap]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTasksUsersMap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskId] [int] NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_tTasksUsersMap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/31/2020 6:14:03 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/31/2020 6:14:03 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/31/2020 6:14:03 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 1/31/2020 6:14:03 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/31/2020 6:14:03 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/31/2020 6:14:03 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tProjects] ADD  CONSTRAINT [DF_tProjects_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tTasks] ADD  CONSTRAINT [DF_tTasks_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tProjectAdmins]  WITH CHECK ADD  CONSTRAINT [FK_tProjectAdmins_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tProjectAdmins] CHECK CONSTRAINT [FK_tProjectAdmins_AspNetUsers]
GO
ALTER TABLE [dbo].[tProjectAdmins]  WITH CHECK ADD  CONSTRAINT [FK_tProjectAdmins_tProjects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[tProjects] ([ProjectId])
GO
ALTER TABLE [dbo].[tProjectAdmins] CHECK CONSTRAINT [FK_tProjectAdmins_tProjects]
GO
ALTER TABLE [dbo].[tProjectTasks]  WITH CHECK ADD  CONSTRAINT [FK_tProjectTasks_tProjects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[tProjects] ([ProjectId])
GO
ALTER TABLE [dbo].[tProjectTasks] CHECK CONSTRAINT [FK_tProjectTasks_tProjects]
GO
ALTER TABLE [dbo].[tProjectTasks]  WITH CHECK ADD  CONSTRAINT [FK_tProjectTasks_tTasks1] FOREIGN KEY([TaskId])
REFERENCES [dbo].[tTasks] ([TaskId])
GO
ALTER TABLE [dbo].[tProjectTasks] CHECK CONSTRAINT [FK_tProjectTasks_tTasks1]
GO
ALTER TABLE [dbo].[tTaskStatuses]  WITH CHECK ADD  CONSTRAINT [FK_tTaskStatuses_tTasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[tTasks] ([TaskId])
GO
ALTER TABLE [dbo].[tTaskStatuses] CHECK CONSTRAINT [FK_tTaskStatuses_tTasks]
GO
ALTER TABLE [dbo].[tTaskStatuses]  WITH CHECK ADD  CONSTRAINT [FK_tTaskStatuses_tTaskStatusMap] FOREIGN KEY([TaskStatusId])
REFERENCES [dbo].[tTaskStatusMap] ([TaskStatusId])
GO
ALTER TABLE [dbo].[tTaskStatuses] CHECK CONSTRAINT [FK_tTaskStatuses_tTaskStatusMap]
GO
ALTER TABLE [dbo].[tTaskStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_tTaskStatusHistory_tTasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[tTasks] ([TaskId])
GO
ALTER TABLE [dbo].[tTaskStatusHistory] CHECK CONSTRAINT [FK_tTaskStatusHistory_tTasks]
GO
ALTER TABLE [dbo].[tTaskStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_tTaskStatusHistory_tTaskStatusMap] FOREIGN KEY([FromStatus])
REFERENCES [dbo].[tTaskStatusMap] ([TaskStatusId])
GO
ALTER TABLE [dbo].[tTaskStatusHistory] CHECK CONSTRAINT [FK_tTaskStatusHistory_tTaskStatusMap]
GO
ALTER TABLE [dbo].[tTaskStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_tTaskStatusHistory_tTaskStatusMap1] FOREIGN KEY([ToStatus])
REFERENCES [dbo].[tTaskStatusMap] ([TaskStatusId])
GO
ALTER TABLE [dbo].[tTaskStatusHistory] CHECK CONSTRAINT [FK_tTaskStatusHistory_tTaskStatusMap1]
GO
ALTER TABLE [dbo].[tTasksUsersMap]  WITH CHECK ADD  CONSTRAINT [FK_tTasksUsersMap_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tTasksUsersMap] CHECK CONSTRAINT [FK_tTasksUsersMap_AspNetUsers]
GO
ALTER TABLE [dbo].[tTasksUsersMap]  WITH CHECK ADD  CONSTRAINT [FK_tTasksUsersMap_tTasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[tTasks] ([TaskId])
GO
ALTER TABLE [dbo].[tTasksUsersMap] CHECK CONSTRAINT [FK_tTasksUsersMap_tTasks]
GO
/****** Object:  Trigger [dbo].[ttrgAfterUpdate]    Script Date: 1/31/2020 6:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[ttrgAfterUpdate] on [dbo].[tTaskStatusHistory]
after insert, update
as
	update f set DateTimeChanged=GETDATE()
	from
	dbo.tTaskStatusHistory as f
	inner join inserted
	as i
	on f.DateTimeChanged = i.DateTimeChanged;
GO
ALTER TABLE [dbo].[tTaskStatusHistory] ENABLE TRIGGER [ttrgAfterUpdate]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Администратор проекта' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tProjectAdmins', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Имя проекта' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tProjects', @level2type=N'COLUMN',@level2name=N'ProjectName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Фактическая дата начала' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tProjects', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Предпологаемая дата завершения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tProjects', @level2type=N'COLUMN',@level2name=N'Deadline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Фактическая дата завершения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tProjects', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Проект должен быть начат в эту дату' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tProjects', @level2type=N'COLUMN',@level2name=N'ToStartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Описание проекта' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tProjects', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Пометка на удаление (0-проект не удален [по умолчанию], 1-проект удален)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tProjects', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'В одном проекте несколько задач' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tProjectTasks', @level2type=N'COLUMN',@level2name=N'TaskId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Имя задачи' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTasks', @level2type=N'COLUMN',@level2name=N'TaskName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Фактическая дата начала' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTasks', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Предпологаемое дата завершения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTasks', @level2type=N'COLUMN',@level2name=N'Deadline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Фактическая дата завершения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTasks', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Задача должна быть начата в эту дату' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTasks', @level2type=N'COLUMN',@level2name=N'ToStartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Описание задачи' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTasks', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Пометка на удаление (0-задача не удалена [по умолчанию], 1-задача удалена)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTasks', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Предыдущий статус задачи' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTaskStatusHistory', @level2type=N'COLUMN',@level2name=N'FromStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Новый статус задачи' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTaskStatusHistory', @level2type=N'COLUMN',@level2name=N'ToStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Обновляется автоматически с помощью триггера' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTaskStatusHistory', @level2type=N'COLUMN',@level2name=N'DateTimeChanged'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Пользователь, ответственный за задачу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tTasksUsersMap', @level2type=N'COLUMN',@level2name=N'UserId'
GO
USE [master]
GO
ALTER DATABASE [GroupTasks] SET  READ_WRITE 
GO
