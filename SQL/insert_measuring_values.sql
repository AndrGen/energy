USE [energy]
GO

--1 �����
declare @@i int = 0;
DECLARE @@StartDate DATETIME = '2016-01-01 00:00';
--���������� ����� � ������ 
while @@i < 31
begin

  DECLARE @@intervals DATETIME = @@StartDate;
  declare @@j int = 0;
  --����� ���������� � ������
  while @@j < 48
   begin
    
	SET @@intervals = DATEADD(MINUTE, 30, @@intervals);

	--��� 1 ���������� ��� ���� ����� ���������
   	INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 1, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 2, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 3, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 4, RAND()*(2000-500)+500, @@intervals);

	 --��� 2 ���������� ��� ���� ����� ���������
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



--2 �����
declare @@i int = 0;
DECLARE @@StartDate DATETIME = '2016-01-02 00:00';
--���������� ����� � ������ 
while @@i < 29
begin

  DECLARE @@intervals DATETIME = @@StartDate;
  declare @@j int = 0;
  --����� ����������
  while @@j < 48
   begin
    
	SET @@intervals = DATEADD(MINUTE, 30, @@intervals);

   	--��� 1 ���������� ��� ���� ����� ���������
   	INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 1, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 2, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 3, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 4, RAND()*(2000-500)+500, @@intervals);

	 --��� 2 ���������� ��� ���� ����� ���������
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


--3 �����
declare @@i int = 0;
DECLARE @@StartDate DATETIME = '2016-01-03 00:00';
--���������� ����� � ������ 
while @@i < 31
begin

  DECLARE @@intervals DATETIME = @@StartDate;
  declare @@j int = 0;
  --����� ����������
  while @@j < 48
   begin
    
	SET @@intervals = DATEADD(MINUTE, 30, @@intervals);

   	--��� 1 ���������� ��� ���� ����� ���������
   	INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 1, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 2, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 3, RAND()*(2000-500)+500, @@intervals);
	 INSERT INTO measuring_values(meter_id, parametr_id, value, value_dt)
     VALUES (1, 4, RAND()*(2000-500)+500, @@intervals);

	 --��� 2 ���������� ��� ���� ����� ���������
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