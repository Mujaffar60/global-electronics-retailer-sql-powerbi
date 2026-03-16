-- Remove Dollar Sign, Commas, And Spaces From The `Unit Price USD` And `Unit Cost USD` Columns
 update products set `Unit Price USD` = replace(replace(replace(`Unit Price USD`, '$', ''), ',', ''), ' ', '');
 update products set `Unit Cost USD` = replace(replace(replace(`Unit Cost USD`, '$', ''), ',', ''), ' ', '');

-- Change The DataType Of The `Unit Price USD` And `Unit Cost USD` Column From Text To Decimal Type
alter table products modify column `Unit Price USD` decimal(10,2);
alter table products modify column `Unit Cost USD` decimal(10,2);

-- Change The Text Type Of The 'Order Date' Column To Proper Date Format
update sales set `Order Date` = str_to_date(`Order Date`, '%m/%d/%Y');

-- Change The DataType From Text To Date Type
alter table customers modify column Birthday date;
alter table sales modify column `Order Date` date;
