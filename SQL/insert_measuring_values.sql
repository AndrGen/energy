USE [energy]
GO

--1 месяц
declare @@i int = 0;
DECLARE @@StartDate DATETIME = '2016-01-01 00:00';
--количество суток в месяце 
while @@i < 31
begin

  DECLARE @@intervals DATETIME = @@StartDate;
  declare @@j int = 0;
  --число интервалов в сутках
  while @@j < 48
   begin
    
	SET @@intervals = DATEADD(MINUTE, 30, @@intervals);

	--для 1 подстанции для всех типов измерений
   	INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 1, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 2, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 3, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 4, RAND()*(2000-500)+500, @@intervals);

	 --для 2 подстанции для всех типов измерений
   	INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 1, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 2, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 3, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 4, RAND()*(2000-500)+500, @@intervals);
	
	set @@j = @@j + 1;
  end

  SET @@StartDate = DATEADD(DAY, 1, @@StartDate);
  set @@i = @@i + 1;
end
go



--2 месяц
declare @@i int = 0;
DECLARE @@StartDate DATETIME = '2016-01-02 00:00';
--количество суток в месяце 
while @@i < 29
begin

  DECLARE @@intervals DATETIME = @@StartDate;
  declare @@j int = 0;
  --число интервалов
  while @@j < 48
   begin
    
	SET @@intervals = DATEADD(MINUTE, 30, @@intervals);

   	--для 1 подстанции для всех типов измерений
   	INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 1, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 2, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 3, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 4, RAND()*(2000-500)+500, @@intervals);

	 --для 2 подстанции для всех типов измерений
   	INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 1, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 2, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 3, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 4, RAND()*(2000-500)+500, @@intervals);
	
	set @@j = @@j + 1;
  end

  SET @@StartDate = DATEADD(DAY, 1, @@StartDate);
  set @@i = @@i + 1;
end
go


--3 месяц
declare @@i int = 0;
DECLARE @@StartDate DATETIME = '2016-01-03 00:00';
--количество суток в месяце 
while @@i < 31
begin

  DECLARE @@intervals DATETIME = @@StartDate;
  declare @@j int = 0;
  --число интервалов
  while @@j < 48
   begin
    
	SET @@intervals = DATEADD(MINUTE, 30, @@intervals);

   	--для 1 подстанции для всех типов измерений
   	INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 1, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 2, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 3, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 4, RAND()*(2000-500)+500, @@intervals);

	 --для 2 подстанции для всех типов измерений
   	INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 1, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 2, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 3, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (2, 4, RAND()*(2000-500)+500, @@intervals);
	
	set @@j = @@j + 1;
  end

  SET @@StartDate = DATEADD(DAY, 1, @@StartDate);
  set @@i = @@i + 1;
end
go