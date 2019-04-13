drop database if exists db_Sale;
create database db_Sale;

drop table if exists db_Sale.Patient;
create table db_Sale.Patient
(
  ID     int auto_increment not null primary key comment 'ID nn pk',
  Name   varchar(50)        not null comment 'Name  nn',
  adrss  varchar(50) comment 'adrss',
  Gender int comment 'Gender ',
  Aga    int comment 'Aga'
) comment 'Patient table';


drop table if exists db_Sale.Drugs;
create table db_Sale.Drugs
(
  ID     int auto_increment not null primary key comment 'id nn pk',
  Name   varchar(50)        not null comment 'Name  nn',
  price  decimal comment 'price',
  Effect varchar(50)        not null comment 'Effect  nn'
) comment 'Drugs table';

drop table if exists db_Sale.records;
create table db_Sale.records
(
  ID        int auto_increment not null primary key comment 'id nn pk',
  PatientID INT comment 'PatientID fk',
  price     decimal comment 'price'
) comment 'records table';


drop table if exists db_Sale.recordsdetails;
create table db_Sale.recordsdetails
(
  ID        int auto_increment not null primary key comment 'id nn pk',
  recordsID INT comment 'recordsID fk',
  DrugsID   INT comment 'DrugsID fk',
  num       int comment 'num ',
  price     decimal comment 'price'
) comment 'recordsdetails table';



alter table db_Sale.records
  ADD constraint
    records_fk_Patient
    foreign key (PatientID)
      references db_Sale.Patient (ID);

alter table db_Sale.recordsdetails
  ADD constraint
    recordsdetails_fk_Drugs
    foreign key (DrugsID)
      references db_Sale.Drugs (ID);

alter table db_Sale.recordsdetails
  ADD constraint
    recordsdetails_fk_records
    foreign key (recordsID)
      references db_Sale.records (ID);
