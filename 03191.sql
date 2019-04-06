drop database if exists db_Sale;
create database db_Sale;

drop table if exists db_Sale.Order;
create table db_Sale.Order
(
  ID      int auto_increment not null primary key comment 'OrderID nn pk',
  Name    varchar(50)        not null comment 'Name  nn',
  phone   varchar(50) comment 'phone',
  Company varchar(50) comment 'Company',
) comment 'Order table';

drop table if exists db_Sale.Orderdetails;
create table db_Sale.Orderdetails
(
  ID      int auto_increment not null primary key comment 'id nn pk',
  OrderID INT comment 'OrderID fk',
  Name    varchar(50)        not null comment 'Name  nn',
  num     int comment 'num ',
  price   decimal comment 'price',
  unit    varchar(50)        not null comment 'unit  nn'
) comment 'Orderdetails table';

alter table db_Sale.Orderdetails
  ADD constraint
    Order_fk_Orderdetails
    foreign key (OrderID)
      references db_Sale.Order (ID);