CREATE TABLE Admin( 
Admin_id number(8) primary key, Admin_name varchar(15) NOT NULL, Admin_password varchar(16) NOT NULL 
);

INSERT INTO Admin VALUES (001,'Team-MEM','MEM@123');

CREATE TABLE customer( customer_id number(8) primary key, 
customer_firstname varchar(30) NOT NULL, customer_lastname varchar(30) NOT NULL, customer_password varchar(16) NOT NULL, customer_phoneno varchar(10) NOT NULL, customer_address varchar(50) NOT NULL, customer_email varchar(20) NOT NULL, Admin_id int references Admin(Admin_id) 
);

INSERT INTO customer VALUES (101,'Harsh','Mehta','harsh@123',7435068222,'1st Cross,Rammurthy nagar,Bangalore' , 'harsh19@gmail.com',001);

INSERT INTO customer VALUES (102,'Jainam','Shah','Jainu@123',9924567892,'117, Examiner Road, Fort,Mumbai, Maharashtra','1ainam33@gmail.com1',001);

INSERT INTO customer VALUES (103,'Aman','Pandya','Aman@123',7834578923,'L 69 Sector 11,Delhi,Uttar Pradesh- 201301','aman@gmail.com',001);

INSERT INTO customer VALUES (104,'Heer','Madia','Her@123',8902345789,'Bee H-138, Kodambakkam Road,Chennai, Tamil Nadu','heer1723@gmail.com',001);

INSERT INTO customer VALUES (105,'Akanksha','Yadav','Akayad@123',9934654001,'295 AjRoad:10, West Hydrebad, Andhra Pradesh','akuu@gmail.com',001);

INSERT INTO customer VALUES (106,'Karan','Punjabi','karpun@123',9934688001,'Nirmal House Opp Jain Mandir,Jalandhar,Punjab','karan12@gmail.com',001);

INSERT INTO customer VALUES (107,'Divya','Mulchandanr','divmul@123',9874688001,'A/3, Tejpal Indl Estate,Andheri (west),Maharashtra','div3421@gmail.com',001);

INSERT INTO customer VALUES (108,'Celia','Anthony','Celia@123',7834654881,'134,14,Nagarathpet Main Road,Banglore,Karnataka','Celia44@gmail.com',001);

INSERT INTO customer VALUES (109,'Johnson','Thomas','Jthomas@123',9931888912,' A/108 Paldi,Ahmeadabad,Gujrat','1thomas550@gmail.com',001);

INSERT INTO customer VALUES (110,'Dhara','Mohan','BhatrDhara@1231',9875678001,'66 Sector 24 Mujessar,Ram Colony,Delhi,Haryana','dbhatt45@gmail.com',001);

CREATE TABLE restaurant( 
Admin_id number(8) references Admin(Admin_id), restaurant_id number(8) primary key, restaurant_name varchar(20) NOT NULL, restaurant_address varchar(50) NOT NULL, restaurant_password varchar(16) NOT NULL, restaurant_phoneno varchar(10) NOT NULL 
);

INSERT INTO restaurant VALUES(001,120,'Kobe sizzler','Vasna Rd. Wake.Society.Nagar Himachal pradesh','Kobe@120',8889323457);

drop table restaurant 



CREATE TABLE restaurant( 
Admin_id number(8) references Admin(Admin_id), restaurant_id number(8) primary key, restaurant_name varchar(20) NOT NULL, restaurant_address varchar(50) NOT NULL, restaurant_password varchar(16) NOT NULL, restaurant_phoneno varchar(10) NOT NULL 
);

INSERT INTO restaurant VALUES(001,111,'Hot chilly','66,Residency Rd. Bengaluru, Karnataka','hc@111',8066604545);

INSERT INTO restaurant VALUES(001,112,'Hatch','F-30,Sampige Rd,Bengaluru,Karnataka','Hat@112',8762203148);

INSERT INTO restaurant VALUES(001,113,'Spice Terrace','24,Ashok nagar , ludhiana ,Punjab','Spi@113',8067189999);

INSERT INTO restaurant VALUES(001,114,'Yay Mumbar','Raheja Tower, Bandra East, Mumbai,Maharashtra','Yay@l14',9222222800);

INSERT INTO restaurant VALUES(001,115,'UmniraoX','7-215 Andheri east,Maharashtra','Umn@123',9773817937);

INSERT INTO restaurant VALUES(001,116,'Sowento','Level-8, Connaught Place, New Delhi, Delhi','Sow@l16',1141191040);

INSERT INTO restaurant VALUES(001,117,'Taj Hotel','154 Khan Market, India Gate, New Delhi. Delhi','tajr@117',1166566162);

INSERT INTO restaurant VALUES(001,118,'Anna Restaurant','Spur Tank road. Chennai, Tamil Nadu','Anna@118',4428368333);

INSERT INTO restaurant VALUES(001,119,'Rajwadii','Behind uth-Temple, Ahmedabad, Gujarat','Raj@119',7926643839);

INSERT INTO restaurant VALUES(001,120,'Kobe sizzler','Vasna Rd. Wake.Society.Nagar Himachal pradesh','Kobe@120',8889323457);

CREATE TABLE category( category_id number(8) primary key, 
category_name varchar(15) NOT NULL, 
restaurant_id number(8) references restaurant(restaurant_id) 
);

INSERT INTO category VALUES (201,'SOUTH-INDIAN','112');

INSERT INTO category VALUES (202,'NORTH-INDIAN','111');

INSERT INTO category VALUES (203,'ITALIAN','115');

INSERT INTO category VALUES (204,'CHINESE','113');

INSERT INTO category VALUES (205,'KATHIAWADI','114');

INSERT INTO category VALUES (206,'SNACKS','118');

INSERT INTO category VALUES (207,'BEVRAGES','119');

INSERT INTO category VALUES (208,'DESSERTS','120');

INSERT INTO category VALUES (209,'ALL ','116');

INSERT INTO category VALUES (210,'CONTINENTAL','117');

CREATE TABLE Menu_items( item_code number(8) primary key, item_name varchar(20) NOT NULL, Price number(8) NOT NULL, 
category_id number(8) references category(category_id) 
);

INSERT INTO Menu_items VALUES(301,'White Pasta',230,203);

INSERT INTO Menu_items VALUES(302,'Arabita Pasta',200,203);

INSERT INTO Menu_items VALUES(303,'Magherita pizza',400,203);

INSERT INTO Menu_items VALUES(304,'gotala dosa',300,201);

INSERT INTO Menu_items VALUES(305,'uttampam',115,201);

INSERT INTO Menu_items VALUES(306,'idli-sambhar',120,201);

INSERT INTO Menu_items VALUES(307,'aloo-cheese paratha',120,202);

INSERT INTO Menu_items VALUES(308,'Paneer pasanda',250,202);

INSERT INTO Menu_items VALUES(309,'chole kulche',100,202);

INSERT INTO Menu_items VALUES(310,'Dry manchrian',200,204);

INSERT INTO Menu_items VALUES(311,'CHINESE BHEL',150,204);

INSERT INTO Menu_items VALUES(312,'Fried rice',210,204);

INSERT INTO Menu_items VALUES(313,'lasaniya bataka',250,205);

INSERT INTO Menu_items VALUES(314,'rigan no olo',300,205);

INSERT INTO Menu_items VALUES(315,'sev tameta nu shaak',220,205);

INSERT INTO Menu_items VALUES(316,'waffle',220,208);

INSERT INTO Menu_items VALUES(317,'chocolate brownie',115,208);

INSERT INTO Menu_items VALUES(318,'pancakes',120,208);

INSERT INTO Menu_items VALUES(319,'burger',55,206);

INSERT INTO Menu_items VALUES(320,'french fries',100,206);

INSERT INTO Menu_items VALUES(321,'muskabun',25,206);

INSERT INTO Menu_items VALUES(322,'peach mojito ',180,207);

INSERT INTO Menu_items VALUES(323,'hazlenut coffee',135,207);

INSERT INTO Menu_items VALUES(324,'kewi juice',90,207);

INSERT INTO Menu_items VALUES(325,'French toast',100,210);

INSERT INTO Menu_items VALUES(326,'Pancakes ',180,209);

INSERT INTO Menu_items VALUES(327,'Steaks',335,210);

CREATE TABLE Payment_details( payment_id number(8) primary key, payment_mode varchar(15) NOT NULL, payment_timestamp timestamp NOT NULL);

INSERT INTO Payment_details VALUES (501,'Online','15-JAN-2022 11:12:33');

INSERT INTO Payment_details VALUES (502,'COD','11-FEB-2022 9:06:30');

INSERT INTO Payment_details VALUES (503,'CARD','22-JUN-2022 1:10:22');

INSERT INTO Payment_details VALUES (504,'COD','02-APR-2021 5:12:03');

INSERT INTO Payment_details VALUES (506,'COD','27-JUL-2021 01:13:13');

INSERT INTO Payment_details VALUES (507,'CARD','09-MAY-2022 09:08:48');

INSERT INTO Payment_details VALUES (508,'COD','28-DEC-2021 10:07:53');

INSERT INTO Payment_details VALUES (509,'Online','05-MAR-2022 7:17:37');

INSERT INTO Payment_details VALUES (510,'CARD','16-JAN-2022 9:19:22');

CREATE TABLE delivery_details( delivery_id number(8) primary key, delivery_address varchar(50) NOT NULL, delivery_status varchar(30) NOT NULL 
);

INSERT INTO delivery_details VALUES (401,'Akshya Nagar 1st Block 1st Cross nagar,Bangalore','Delivered');

INSERT INTO delivery_details VALUES (402,'Nirmal House, Thane ,Mumbai,Maharashta','Delivered');

INSERT INTO delivery_details VALUES (403,'L 69 Sector 11,Delhi,Uttar Pradesh','Preparing');

INSERT INTO delivery_details VALUES (404,'B_h 138, Kodambakkam High Road,Chennai,Tamil Nadu','Picked-up');

INSERT INTO delivery_details VALUES (405,'295 Aj-kauser Hydrebad,Andhra Pradesh','Delivered');

INSERT INTO delivery_details VALUES (406,'117,Nagindas Road,Mumbai,Maharashtra','preparing');

INSERT INTO delivery_details VALUES (407,'A13, Tejpal Indl Estate, Mumbai, Maharashta','Preparing');

INSERT INTO delivery_details VALUES (408,'134/135 Nagarathpet,Banglore,Karnataka','Delivered');

INSERT INTO delivery_details VALUES (409,'66 Sector 24, Ram Colony,Delhi,Haryana','Picked-up');

INSERT INTO delivery_details VALUES (410,'A/108, Paldi,Ahmeadabad,Gujrat','Picked-up');

CREATE TABLE Order_details( Order_id number(8) primary key, Order_time timestamp, 
Order_amount number(8) NOT NULL, Order_status varchar(20) NOT NULL, 
customer_id number(8) references customer(customer_id),  
delivery_id number(8) references delivery_details(delivery_id),  
payment_id number(8) references Payment_details(payment_id), 
restaurant_id number(8) references restaurant(restaurant_id) 
);

INSERT INTO Order_details VALUES (601,'11-FEB-2022 9:06:30','240','Preparing',101,401,501,111);

INSERT INTO Order_details VALUES (603,'02-APR-2021 5:12:03','345', 'delivered',103,409,503,117);

INSERT INTO Order_details VALUES (604,'27-JUL-2021 01:13:13','400', 'preparing', 104,404,504,112);

INSERT INTO Order_details VALUES (605,'09-MAY-2022 09:08:48','250', 'delivered',104,404,509,119);

INSERT INTO Order_details VALUES (606,'28-DEC-2021 10:07:53','230', 'preparing', 106,406,506,114);

INSERT INTO Order_details VALUES (607,'05-MAR-2022 7:17:37','300', 'del ivered',108 ,408 ,507,113);

INSERT INTO Order_details VALUES (608,'16-JAN-2022 9:19:22','50', 'preparing',109,410,508,120);

CREATE TABLE Orders( 
quantity number(8) NOT NULL, 
Order_id number(8) references Order_details(Order_id), item_code number(8) references Menu_items(item_code) 
);

INSERT INTO Orders VALUES (2,601,307);

INSERT INTO Orders VALUES (3,603,305);

INSERT INTO Orders VALUES(2,604,310);

INSERT INTO Orders VALUES (1,605,313);

INSERT INTO Orders VALUES(1,606,301);

INSERT INTO Orders VALUES (3,607,306);

INSERT INTO Orders VALUES(2,608,321);

CREATE TABLE Rating( 
ratings number(8) NOT NULL, 
customer_id number(8) references customer(customer_id), restaurant_id number(8) references restaurant(restaurant_id) 
);

INSERT INTO Rating VALUES (3,101,111);

INSERT INTO Rating VALUES (4,102,114);

INSERT INTO Rating VALUES (2,103,117);

INSERT INTO Rating VALUES (4,104,120);

INSERT INTO Rating VALUES (3,106,115);

INSERT INTO Rating VALUES (4,108,113);

INSERT INTO Rating VALUES (3,109,112);

INSERT INTO Rating VALUES (4,110,119);

INSERT INTO Rating VALUES (3,109,116);

