USE [master]
GO
/****** Object:  Database [MechanicShop]    Script Date: 5/12/2022 1:00:42 PM ******/
CREATE DATABASE [MechanicShop]
GO
USE [MechanicShop]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/12/2022 1:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](20) NOT NULL,
	[Zip] [varchar](6) NOT NULL,
	[Phone] [varchar](13) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/12/2022 1:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[JobTitle] [varchar](50) NULL,
	[HourlyWage] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 5/12/2022 1:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[Price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 5/12/2022 1:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 5/12/2022 1:00:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[VehicleID] [int] IDENTITY(1,1) NOT NULL,
	[Make] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[Year] [varchar](5) NOT NULL,
	[VIN] [varchar](20) NOT NULL,
	[CustomerID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (1, N'Abdullahi', N'Mohamed', N'123 Maine St', N'St. Cloud', N'MN', N'56301', N'320-255-5555')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (2, N'Sara', N'Lee', N'5124 Beverly St', N'Beverly Hills', N'CA', N'98272', N'845-255-5145')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (3, N'Tom', N'Lee', N'985 Fairview Rd', N'St. Paul', N'MN', N'65232', N'612-525-7895')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (4, N'John', N'Smith', N'4521 Division St', N'St. Cloud', N'MN', N'56301', N'320-123-4562')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (6, N'Michael', N'Jackson', N'123 Hollywood St', N'Los Angles', N'CA', N'98252', N'845-255-5555')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (7, N'Tom', N'Shmidt', N'4326 Osceola St', N'St. Louis', N'MO', N'63106', N'314-255-1425')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (8, N'Karen', N'Boomer', N'452 Brentford Lane', N'St. Paul', N'MN', N'53106', N'612-255-1589')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (9, N'Josh', N'Hacker', N'8745 Fairview Dr', N'St. Paul', N'MN', N'53178', N'612-745-8596')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (10, N'Ashley', N'Brook', N'1234 Maine Prairie Rd', N'St. Cloud', N'MN', N'56301', N'320-745-4512')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Address], [City], [State], [Zip], [Phone]) VALUES (13, N'Ali', N'Omar', N'456 5th St', N'St. Cloud', N'MN', N'56301', N'320-111-2525')
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (1, N'Sarah', N'Connor', N'Tire Technician', 25.3000)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (2, N'Ali', N'Mohamed', N'Lube Technician', 30.0000)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (3, N'Gustavo', N'Gomes', N'Brakes Technician', 35.5000)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (4, N'Anna', N'Smith', N'Supervisor', 50.7500)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (5, N'Alejandro', N'Cortez', N'Manager', 75.0000)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (6, N'Tom', N'Holland', N'Brake Technician', 25.2500)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (7, N'Said', N'Ahmed', N'Engine Technician', 31.2500)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (8, N'Mamadou', N'Ikris', N'Clean-Up Crew', 20.5000)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (9, N'Oscar', N'Fernandez', N'Clean-Up Crew', 21.5000)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (10, N'Maria', N'Gonzales', N'Clean-Up Supervisor', 35.5000)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [JobTitle], [HourlyWage]) VALUES (11, N'Jackie', N'Chan', N'Service Technician', 30.2500)
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 
GO
INSERT [dbo].[Invoice] ([InvoiceID], [Date], [EmployeeID], [CustomerID], [ServiceID], [Price]) VALUES (1, CAST(N'2018-02-05' AS Date), 1, 1, 3, 25.5000)
GO
INSERT [dbo].[Invoice] ([InvoiceID], [Date], [EmployeeID], [CustomerID], [ServiceID], [Price]) VALUES (2, CAST(N'2020-04-10' AS Date), 4, 2, 4, 2000.0000)
GO
INSERT [dbo].[Invoice] ([InvoiceID], [Date], [EmployeeID], [CustomerID], [ServiceID], [Price]) VALUES (3, CAST(N'2021-10-25' AS Date), 3, 4, 1, 40.0000)
GO
INSERT [dbo].[Invoice] ([InvoiceID], [Date], [EmployeeID], [CustomerID], [ServiceID], [Price]) VALUES (5, CAST(N'2022-05-12' AS Date), 2, 6, 6, 30.5500)
GO
INSERT [dbo].[Invoice] ([InvoiceID], [Date], [EmployeeID], [CustomerID], [ServiceID], [Price]) VALUES (7, CAST(N'2018-06-04' AS Date), 10, 8, 9, 100.0000)
GO
INSERT [dbo].[Invoice] ([InvoiceID], [Date], [EmployeeID], [CustomerID], [ServiceID], [Price]) VALUES (9, CAST(N'2020-01-01' AS Date), 7, 3, 2, 45.3500)
GO
INSERT [dbo].[Invoice] ([InvoiceID], [Date], [EmployeeID], [CustomerID], [ServiceID], [Price]) VALUES (10, CAST(N'2013-03-15' AS Date), 5, 7, 7, 120.9900)
GO
INSERT [dbo].[Invoice] ([InvoiceID], [Date], [EmployeeID], [CustomerID], [ServiceID], [Price]) VALUES (11, CAST(N'2019-04-24' AS Date), 9, 10, 8, 99.5000)
GO
INSERT [dbo].[Invoice] ([InvoiceID], [Date], [EmployeeID], [CustomerID], [ServiceID], [Price]) VALUES (12, CAST(N'2020-10-05' AS Date), 8, 9, 10, 155.0000)
GO
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (1, N'Tire Change', N'Customer had a flat tire. 2 new tires installed.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (2, N'Check Light On', N'Customer had engine problems.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (3, N'Oil Change', N'Customer needed oil Change.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (4, N'Transmission Repair', N'Customer''s vehicle needed a new transmission.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (5, N'Oil Change', N'Customer had oil change.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (6, N'Tire Change', N'Customer had 1 tire changed.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (7, N'Transmission Fluid Change', N'Customer had transmission fluid changed.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (8, N'Spark Plug Replacement', N'Customer had 2 spark plugs replaced.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (9, N'Check Light Engine', N'Customer had check light engine fixed.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (10, N'Radiator Flush', N'Customer had radiator flushed.')
GO
INSERT [dbo].[Services] ([ServiceID], [Name], [Description]) VALUES (11, N'Maintenace', N'Customer had a tune up.')
GO
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehicles] ON 
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (1, N'Toyota', N'Highlander', N'2015', N'5563145267', 2)
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (2, N'Cadillac', N'CTS 6', N'2020', N'1456987532', 1)
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (3, N'BMW', N'6 Series', N'2018', N'6587432568', 3)
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (5, N'Jeep', N'Grand Cherokee', N'2005', N'4587965135', 8)
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (6, N'Ford', N'Explorer', N'2000', N'4458921132', 7)
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (7, N'Chevy', N'Tahoe', N'2020', N'7941101132', 4)
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (8, N'Kia', N'Sorento', N'2022', N'7241116352', 6)
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (9, N'Hyundai', N'Santa Fe', N'1999', N'2568742501', 9)
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (10, N'RAM', N'1500', N'2012', N'1123654885', 10)
GO
INSERT [dbo].[Vehicles] ([VehicleID], [Make], [Model], [Year], [VIN], [CustomerID]) VALUES (12, N'Acura', N'TLX', N'2001', N'1265789652', 13)
GO
SET IDENTITY_INSERT [dbo].[Vehicles] OFF
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [fk_Customer_Invoice] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [fk_Customer_Invoice]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [fk_Employee_Invoice] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [fk_Employee_Invoice]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [fk_Service_Invoice] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Services] ([ServiceID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [fk_Service_Invoice]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [fk_Customer_Vehicle] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [fk_Customer_Vehicle]
GO
USE [master]
GO
ALTER DATABASE [MechanicShop] SET  READ_WRITE 
GO
