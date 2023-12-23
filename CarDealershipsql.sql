create table salesperson (
  seller_id SERIAL primary key,
  seller_name VARCHAR(150)
);

create table customer (
  customer_id SERIAL primary key,
  customer_name VARCHAR(150),
  address VARCHAR(150),
  billing_info VARCHAR(150)
);

create table car (
  car_id SERIAL primary key,
  car_age VARCHAR(150),
  make VARCHAR(150),
  model VARCHAR(150),
  price NUMERIC(10,2)
);

create table servicehistory (
  record_id SERIAL primary key,
  car_id INTEGER,
  details VARCHAR(200),
  mechanic_id INTEGER,
  service_date VARCHAR(100),
  hours INTEGER,
  foreign key (car_id) references car(car_id),
  foreign key (mechanic_id) references mechanic(mechanic_id)
);

create table mechanic (
  mechanic_id SERIAL primary key,
  mechanic_name VARCHAR(150)
);

create table invoice (
  invoice_id SERIAL primary key,
  car_id INTEGER,
  seller_id INTEGER,
  sale_date VARCHAR(100),
  amount NUMERIC(10,2),
  customer_id INTEGER,
  FOREIGN KEY (car_id) REFERENCES car(car_id),
  FOREIGN KEY (seller_id) REFERENCES salesperson(seller_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

create table serviceticket (
  ticket_id SERIAL primary key,
  customer_id INTEGER,
  car_id INTEGER,
  foreign key (customer_id) references customer(customer_id),
  foreign key (car_id) references car(car_id)
);



-- Information for tables starts here 

-- data for salesperson table
insert into salesperson(seller_id,seller_name)
values(1,'John');

insert into salesperson(seller_id,seller_name)
values(2,'James');


-- data for customer table 
insert into customer (customer_id, customer_name, address, billing_info)
values(1, 'Billy', '1010 Awesomeness St', '5454 5454 5454 5454 5/25');

insert into customer (customer_id, customer_name, address, billing_info)
values(2, 'Jason', '1011 Awesomeo Dr', '5454 5454 5454 5457 5/23');


-- data for car table 

insert into car (car_id, car_age, make, model, price)
values (1, 'new', 'toyota', 'prius', 22000.99);


insert into car (car_id, car_age, make, model, price)
values (2, 'old', 'honda', 'accord', 28500.97);


-- data for servicehistory table 
insert into servicehistory (car_id, details, mechanic_id, service_date, hours) valueS
  (1, 'Oil change', 101, '2023-06-15', 2);

insert into servicehistory (car_id, details, mechanic_id, service_date, hours) values
  (2, 'Brake replacement', 102, '2023-08-22', 4);


 
--data for mechanic 
 insert into mechanic (mechanic_id, mechanic_name) values
  (101, 'mark');

insert into mechanic (mechanic_id, mechanic_name) values
  (102, 'sarah');

 
--data for invoice
insert into invoice (car_id, seller_id, sale_date, amount, customer_id) values
  (1, 1, '2023-06-25', 25000.00, 1);

insert into invoice (car_id, seller_id, sale_date, amount, customer_id) values
  (2, 2, '2023-08-10', 32000.00, 2);

 
 -- data for serviceticket
insert into serviceticket (customer_id, car_id) values
  (1, 1);

insert into serviceticket (customer_id, car_id) values
  (2, 2);











