-script to create table for practice
  CREATE TABLE fruits(
      sale_date DATE,  
 	  fruit VARCHAR(50),
      sold_num INTEGER,
  	  PRIMARY KEY(sale_date,fruit)
);

INSERT INTO fruits (sale_date,fruit,sold_num)
VALUES 
('2020-5-01','apples',10),
('2020-5-01','oranges',8),
('2020-5-02','apples',15),
('2020-5-02','oranges',15),
('2020-5-03','apples',20),
('2020-5-03','oranges',0),
('2020-5-04','apples',15),
('2020-5-04','oranges',16);

- solution
with apple as (select * from fruits where  fruit = 'apples')
, orange as (SELECT * from fruits where fruit = 'oranges')

select ap.sale_date,(ap.sold_num - o.sold_num) as difference_btw_apple_n_orange
from apple as ap
inner join orange o 
	on ap.sale_date = o.sale_date
