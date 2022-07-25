USE [restaurant]
GO

INSERT INTO [dbo].[tariff]
           ([title]
           ,[discount]
           ,[description]
		   ,[min_sum])
     VALUES
           ('5%'
           ,0.05
		   ,'�� �����'
		   ,0)

           ,('10%'
           ,0.1
		   ,'�� �����; ���� ��������'
		   ,10000)

		   ,('15%'
           ,0.15
		   ,'�� �����'
		   ,50000)
		   
		   ,('20%'
           ,0.2
		   ,'�� �����; ����� ����������; �� �����'
		   ,100000)
GO

INSERT INTO [dbo].[client]
           ([id_tariff]
           ,[lastname]
           ,[middlename]
           ,[firstname]
           ,[phone_number]
           ,[address]
           ,[card]
           ,[sum])
     VALUES
           (2
           ,'�������'
           ,'����'
           ,'������'
           ,'89615472247'
           ,'��. ������, �.125, ��.19'
           ,'457912345467'
           ,12320)

		   ,(2
           ,'�����'
           ,'����'
           ,'����������'
           ,'89091147889'
           ,'��. �����������, �.78, ��.3'
           ,'789124578551'
           ,35770)
		   
		   ,(3
           ,'������'
           ,'������'
           ,'���������'
           ,'89095795124'
           ,'��. ��������, �.21, ��.4'
           ,'123457897247'
           ,89240)

		   ,(1
           ,'�������'
           ,'�������'
           ,'����������'
           ,'89615548721'
           ,'��. ������������, �.45, ��.29'
           ,'214854621546'
           ,7856)

		   ,(2
           ,'������������'
           ,'������'
           ,'�����������'
           ,'89297872145'
           ,'��. ���������, �.64'
           ,'546578795789'
           ,15700)

		   ,(1
           ,'�������'
           ,'������'
           ,'��������'
           ,'89227897721'
           ,'��. ������������, �.12, ��.5'
           ,'123123424564'
           ,2153)

		   ,(2
           ,'�����'
           ,'���������'
           ,'����������'
           ,'89293658971'
           ,'��. �����������, �.22, ��.5'
           ,'123456489794'
           ,28019)

		   ,(2
           ,'�������'
           ,'�������'
           ,'����������'
           ,'89064567871'
           ,'��. ������������, �.84, ��.23'
           ,'123456487987'
           ,34000)

		   ,(3
           ,'��������'
           ,'�������'
           ,'�����������'
           ,'89062134217'
           ,'��. �����������, �.107, ��.35'
           ,'156456487952'
           ,78214)
		   
		   ,(2
           ,'��������'
           ,'������'
           ,'���������'
           ,'89037897213'
           ,'��. ���������, �.11, ��.8'
           ,'123456487897'
           ,48900)

GO

INSERT INTO [dbo].[table]
           ([title]
           ,[description])
     VALUES
           ('1'
           ,'4 ���')
		   
		   ,('2'
           ,'4 ���')

		   ,('3'
           ,'2 ���; � ����')

		   ,('4'
           ,'2 ���; � ����')

		   ,('5'
           ,'6 ���')

		   ,('6'
           ,'6 ���')

		   ,('7'
           ,'4 ���; � ����')

		   ,('8'
           ,'4 ���; � ����')

		   ,('9'
           ,'4 ���')

		   ,('10'
           ,'2 ���')

		   ,('11'
           ,'2 ���')

GO

INSERT INTO [dbo].[booking]
           ([id_table]
           ,[datetime_booking]
           ,[duration_hours]
           ,[is_confirmed]
           ,[is_canceled]
           ,[description])
     VALUES
           (1
           ,'2022-04-01 14:00:00'
           ,2
           ,1
           ,0
           ,'3 ���')

		   ,(3
           ,'2022-04-01 10:00:00'
           ,2
           ,0
           ,1
           ,'2 ���')

		   ,(1
           ,'2022-04-01 10:00:00'
           ,3
           ,1
           ,1
           ,'4 ���')

		   ,(4
           ,'2022-04-05 11:30:00'
           ,2
           ,1
           ,0
           ,'2 ���')

		   ,(5
           ,'2022-04-05 11:30:00'
           ,2
           ,1
           ,0
           ,'5 ���')

		   ,(4
           ,'2022-04-05 17:00:00'
           ,4
           ,1
           ,0
           ,'5 ���')
		   
		   ,(10
           ,'2022-04-07 14:00:00'
           ,3
           ,1
           ,1
           ,'3 ���')

		   ,(1
           ,'2022-04-08 14:00:00'
           ,2
           ,0
           ,1
           ,'2 ���')

		   ,(3
           ,'2022-04-10 15:00:00'
           ,2
           ,0
           ,0
           ,'2 ���')

		   ,(7
           ,'2022-04-10 15:00:00'
           ,2
           ,0
           ,0
           ,'3 ���')
GO

INSERT INTO [dbo].[position]
           ([title]
           ,[salary]
           ,[tariff_rate]
           ,[is_tariff_rate])
     VALUES
           ('������������� ����'
           ,50000
           ,NULL
           ,0)

		   ,('��������'
           ,NULL
           ,227
           ,1)
		   
		   ,('�������'
           ,NULL
           ,180
           ,0)

		   ,('�������� ��'
           ,50000
           ,NULL
           ,0)
GO

INSERT INTO [dbo].[staff]
           ([id_position]
           ,[lastname]
           ,[middlename]
           ,[firstname]
           ,[phone_number]
           ,[is_fired])
     VALUES
           (1
           ,'����������'
           ,'�������'
           ,'����������'
           ,'89615475655'
           ,1)

		   ,(2
           ,'���������'
           ,'����'
           ,'���������'
           ,'89051232254'
           ,0)

		   ,(2
           ,'�����'
           ,'������'
           ,'����������'
           ,'89612245844'
           ,0)

		   ,(2
           ,'�������'
           ,'������� '
           ,'����������'
           ,'89031245785'
           ,1)

		   ,(2
           ,'����������'
           ,'�������'
           ,'����������'
           ,'89034124545'
           ,0)

		   ,(3
           ,'����'
           ,'�������'
           ,'�������������'
           ,'89052123477'
           ,0)

		   ,(4
           ,'������'
           ,'�������'
           ,'��������'
           ,'89051234575'
           ,0)
		   
		   ,(1
           ,'��������'
           ,'�������'
           ,'���������'
           ,'89061245781'
           ,0)
GO

INSERT INTO [dbo].[worked]
           ([id_staff]
           ,[date_worked]
           ,[duration])
     VALUES
		   (2
           ,'2022-04-01'
           ,12)
		   
		   ,(3
           ,'2022-04-01'
           ,12)	
		   
		   ,(8
           ,'2022-04-01'
           ,2)

		   ,(2
           ,'2022-04-02'
           ,12)
		   
		   ,(3
           ,'2022-04-02'
           ,12)	
		   
		   ,(8
           ,'2022-04-02'
           ,2)
		   
		   ,(4
           ,'2022-04-03'
           ,12)
		   
		   ,(5
           ,'2022-04-03'
           ,12)	
		   
		   ,(8
           ,'2022-04-03'
           ,2)

		   ,(4
           ,'2022-04-04'
           ,12)
		   
		   ,(5
           ,'2022-04-04'
           ,12)	
		   
		   ,(8
           ,'2022-04-04'
           ,2)
		   
		   ,(4
           ,'2022-04-05'
           ,12)
		   
		   ,(5
           ,'2022-04-05'
           ,12)	
		   
		   ,(8
           ,'2022-04-05'
           ,2)

		   ,(2
           ,'2022-04-06'
           ,12)
		   
		   ,(3
           ,'2022-04-06'
           ,12)	
		   
		   ,(8
           ,'2022-04-06'
           ,2)

		   ,(2
           ,'2022-04-07'
           ,12)
		   
		   ,(3
           ,'2022-04-07'
           ,12)	
		   
		   ,(8
           ,'2022-04-07'
           ,2)
		   
		   ,(4
           ,'2022-04-08'
           ,12)
		   
		   ,(5
           ,'2022-04-08'
           ,12)	
		   
		   ,(8
           ,'2022-04-08'
           ,2)
		   
		   ,(4
           ,'2022-04-09'
           ,12)
		   
		   ,(5
           ,'2022-04-09'
           ,12)	
		   
		   ,(8
           ,'2022-04-09'
           ,2)
GO

INSERT INTO [dbo].[unit]
           ([title])
     VALUES
           ('��.')
		   ,('��')
		   ,('��')
		   ,('��')
		   ,('�')
GO

INSERT INTO [dbo].[ingredient]
           ([id_unit]
           ,[title]
           ,[price])
     VALUES
           (4
           ,'������'
		   ,0)
		   
		   ,(4
           ,'��������'
		   ,0)

		   ,(4
           ,'������'
		   ,0)

		   ,(4
           ,'����� ���������'
		   ,30)

		   ,(4
           ,'����� ������'
		   ,30)

		   ,(4
           ,'����� ����������'
		   ,30)

		   ,(2
           ,'������� ����'
		   ,0)

		   ,(4
           ,'����� ��������'
		   ,30)

		   ,(1
           ,'���������� �������'
		   ,30)
		   
		   ,(1
           ,'����������'
		   ,30)
		   
		   ,(1
           ,'���� ���������'
		   ,0)
		   
		   ,(1
           ,'�������'
		   ,40)
		   
		   ,(2
           ,'���� ����������'
		   ,0)
		   
		   ,(2
           ,'��� ������'
		   ,0)
		   
		   ,(2
           ,'������ ������'
		   ,0)
		   
		   ,(2
           ,'������ ������'
		   ,0)
		   
		   ,(2
           ,'�������'
		   ,0)
		   
		   ,(1
           ,'���� �������'
		   ,0)
		   
		   ,(2
           ,'���� ������'
		   ,0)
		   
		   ,(2
           ,'��������� �������'
		   ,0)
		   
		   ,(2
           ,'��������'
		   ,0)
		   
		   ,(1
           ,'�������� ���������'
		   ,0)
		   
		   ,(2
           ,'���� ������� �������'
		   ,0)
		   
		   ,(1
           ,'����� ������'
		   ,0)
		   
		   ,(2
           ,'������ ������������'
		   ,0)
		   
		   ,(2
           ,'���� ������'
		   ,0)
		   
		   ,(2
           ,'����� ����'
		   ,0)
		   
		   ,(2
           ,'������ ������������'
		   ,0)
		   
		   ,(2
           ,'���� �������'
		   ,0)
		   
		   ,(2
           ,'���� ��������'
		   ,0)
		   
		   ,(2
           ,'��� �������'
		   ,0)

		   ,(4
		   ,'����'
		   ,0)
GO

INSERT INTO [dbo].[dish]
           ([id_unit]
		   ,[amount]
           ,[title]
           ,[price]
           ,[is_removed]
           ,[description])
     VALUES
           (2
		   ,255
           ,'������� ���������� � ��������'
           ,279
           ,0
           ,'')

           ,(2
		   ,265
           ,'������� � �������, ������� � ����� � �������� � ������ ����'
           ,249
           ,0
           ,'')		
		   
           ,(2
		   ,240
           ,'������� � ������� � �������� � ��������'
           ,299
           ,0
           ,'')	
		   
		   ,(4
		   ,40
           ,'��������'
           ,79
           ,0
           ,'')
		   
		   ,(4
		   ,150
           ,'�������� ���������'
           ,109
           ,0
           ,'� ����������� ����')
		   
		   ,(4
		   ,80
           ,'�������� ������'
           ,109
           ,0
           ,'������� ��������')

		   ,(4
		   ,220
           ,'��������'
           ,149
           ,0
           ,'')
		   
		   ,(4
		   ,260
           ,'�����'
           ,159
           ,0
           ,'')
		   
		   ,(4
		   ,220
           ,'���'
           ,209
           ,0
           ,'')
GO

INSERT INTO [dbo].[dish_ingredient]
           ([id_dish]
           ,[id_ingredient]
           ,[amount])
     VALUES
           (1
           ,11
           ,2)

		   ,(1
           ,12
           ,2)

		   ,(1
           ,13
           ,20)
		   
		   ,(1
           ,14
           ,20)

		   ,(1
           ,15
           ,20)

		   ,(1
           ,16
           ,20)

		   ,(1
           ,17
           ,20)

		   ,(1
           ,18
           ,20)

		   ,(1
           ,19
           ,20)

		   ,(1
           ,20
           ,20)

		   ,(1
           ,21
           ,20)

		   ,(2
           ,22
           ,2)

		   ,(2
           ,23
           ,2)

		   ,(2
           ,24
           ,20)
		   
		   ,(2
           ,25
           ,20)

		   ,(2
           ,26
           ,20)

		   ,(2
           ,27
           ,20)

		   ,(2
           ,15
           ,20)

		   ,(2
           ,16
           ,20)

		   ,(3
           ,22
           ,2)

		   ,(3
           ,15
           ,2)

		   ,(3
           ,28
           ,20)
		   
		   ,(3
           ,29
           ,20)

		   ,(3
           ,30
           ,20)

		   ,(3
           ,31
           ,20)

		   ,(3
           ,17
           ,20)

		   ,(4
           ,2
           ,40)

		   ,(5
           ,2
           ,40)

		   ,(5
           ,32
           ,110)
		   
		   ,(6
           ,2
           ,80)
		   
		   ,(6
           ,2
           ,40)
		   
		   ,(7
           ,1
           ,180)

		   ,(8
           ,2
           ,40)
		   
		   ,(8
           ,1
           ,220)

		   ,(9
           ,2
           ,40)
		   
		   ,(9
           ,1
           ,220)

		   ,(9
           ,3
           ,20)

		   ,(9
           ,4
           ,20)
GO

INSERT INTO [dbo].[order]
           ([id_staff]
           ,[id_table]
           ,[id_client]
		   ,[id_tariff]
           ,[cost]
		   ,[is_takeaway]
		   ,[is_payed]
		   ,[order_datetime])
     VALUES
           (2
           ,3
           ,2
		   ,4
		   ,0
		   ,0
           ,1
		   ,'2022-04-01')

		   ,(3
           ,3
           ,NULL
           ,2
		   ,0
		   ,0
		   ,1
		   ,'2022-04-01')

		   ,(2
           ,4
           ,1
           ,2
           ,0
           ,0
		   ,1
		   ,'2022-04-01')
		   
		   ,(4
           ,6
           ,NULL
           ,NULL
		   ,0
		   ,0
		   ,1
		   ,'2022-04-01')
		  
		  ,(5
           ,4
           ,4
           ,NULL
		   ,0
		   ,0
		   ,1
		   ,'2022-04-01')
GO

INSERT INTO [dbo].[order_dish]
           ([id_order]
           ,[id_dish]
		   ,[amount])
     VALUES
           (1
           ,1
		   ,3)
		   
		   ,(1
		   ,9
		   ,3)

		   ,(2
		   ,4
		   ,1)

		   ,(3
		   ,5
		   ,2)
		   
		   ,(3
		   ,8
		   ,1)

		   ,(3
		   ,2
		   ,1)
		   
		   ,(4
		   ,2
		   ,2)

		   ,(4
		   ,5
		   ,2)
GO

INSERT INTO [dbo].[order_dish_ingredient]
           ([id_order_dish]
           ,[id_ingredient]
		   ,[amount])
     VALUES
           (2
           ,5
		   ,1)

		   ,(4
           ,6
		   ,1)
GO


INSERT INTO [dbo].[user]
           ([id_staff]
		   ,[title]
           ,[password]
		   )
     VALUES
			 --admin
           (7
		   ,'admin'
           ,'?iv?A???M??g??s?K??o*?H?')
		   -- 111
		   ,(1
		   ,'hallmaster'
           ,'???A?Z????????*;?????
	?')
			--1234
		   ,(3
		   ,'justuser'
           ,'?gB??\v??U?g?6#???E??x??F?')
GO

INSERT INTO [dbo].[role]
           ([title]
           ,[description])
     VALUES
           ('app_admin'
           ,'����� ����������, ����� ��� ����������')
           ,('hall_admin'
           ,'����� ����')
		   ,('waiter'
           ,'��������')
GO

INSERT INTO [dbo].[user_role]
           ([id_user]
           ,[id_role]
           ,[description])
     VALUES
           (1
           ,1
           ,'')
		   ,(2
           ,2
           ,'')
		   ,(3
           ,3
           ,'')
GO

INSERT INTO [dbo].[permission]
           ([title]
           ,[description])
     VALUES
		   ('watch order'
           ,'')
		   ,('add order'
           ,'')
		   ,('edit order'
           ,'')
		   ,('remove order'
           ,'')
		   ,('watch menu'
           ,'')
		   ,('edit menu'
           ,'')
		   ,('remove dish from menu'
           ,'')
		   ,('watch client info'
           ,'')
		   ,('add client'
           ,'')		   
		   ,('edit client info'
           ,'')
		   ,('remove client'
           ,'')
		   ,('watch booking'
           ,'')
		   ,('add booking'
           ,'')		   
		   ,('edit booking'
           ,'')
		   ,('remove booking'
           ,'')		
		   ,('watch table'
           ,'')
		   ,('add table'
           ,'')		   
		   ,('edit table'
           ,'')
		   ,('remove table'
           ,'')
GO

INSERT INTO [dbo].[role_permission]
           ([id_role]
           ,[id_permission]
           ,[description])
     VALUES
           (1
           ,1
           ,'')
		   ,(1
           ,2
           ,'')
		   ,(1
           ,3
           ,'')
		   ,(1
           ,4
           ,'')
		   ,(1
           ,5
           ,'')
		   ,(1
           ,6
           ,'')
		   ,(1
           ,7
           ,'')
		   ,(1
           ,8
           ,'')
		   ,(1
           ,9
           ,'')
		   ,(1
           ,10
           ,'')		   
		   ,(1
           ,11
           ,'')
		   ,(1
           ,12
           ,'')
		   ,(1
           ,13
           ,'')
		   ,(1
           ,14
           ,'')
		   ,(1
           ,15
           ,'')
		   ,(1
           ,16
           ,'')		   
		   ,(1
           ,17
           ,'')
		   ,(1
           ,18
           ,'')
		   ,(1
           ,19
           ,'')		   
		  
		  
		  ,(2
           ,1
           ,'')
		   ,(2
           ,2
           ,'')
		   ,(2
           ,3
           ,'')
		   ,(2
           ,4
		   ,'')		   
		   ,(2
           ,5
		   ,'')
		   ,(2
           ,8
           ,'')
		   ,(2
           ,9
           ,'')
		   ,(2
           ,10
           ,'')		   
		   ,(2
           ,11
           ,'')
		   ,(2
           ,12
           ,'')
		   ,(2
           ,13
           ,'')
		   ,(2
           ,14
           ,'')
		   ,(2
           ,15
           ,'')
		   ,(2
           ,16
           ,'')		   
		   ,(2
           ,17
           ,'')
		   ,(2
           ,18
           ,'')
		   ,(2
           ,19
           ,'')		  
		   
		   
		   ,(3
           ,1
           ,'')
		   ,(3
           ,2
           ,'')
		   ,(3
           ,3
           ,'')
		   ,(3
           ,4
		   ,'')		   
		   ,(3
           ,5
		   ,'')
		   ,(3
           ,8
           ,'')
		   ,(3
           ,9
           ,'')
		   ,(3
           ,10
           ,'')		   
		   ,(3
           ,13
           ,'')
		   ,(3
           ,14
           ,'')
		   ,(3
           ,15
           ,'')
		   ,(3
           ,16
           ,'')  
GO


--TODO: ��������� ������� ��������� ������ �� ���� � ���������� ����, ���. ������������

--TODO: ��������� ���������� �� ������ ����� ������� ����� ������������ � ������ ������� "is_payed" � 1 ��� � 0 �� 1 (�������� �����)