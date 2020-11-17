USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [testuser]    Script Date: 04.02.2016 21:01:42 ******/
CREATE LOGIN [testuser] WITH PASSWORD=N'ÃMi\.ø@0Î3qX÷&~Ýº2Ây4äe[', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [testuser] DISABLE
GO

