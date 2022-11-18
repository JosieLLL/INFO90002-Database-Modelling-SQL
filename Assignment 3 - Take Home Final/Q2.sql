CREATE TABLE Product
(Barcode INT,
 Name VARCHAR(255),
 ProductArea VARCHAR(50),
 Price DECIMAL(7,2),
 PRIMARY KEY(Barcode));

CREATE TABLE Customer
(Username VARCHAR(30),
 FirstName VARCHAR(20),
 LastName VARCHAR(30),
 Email VARCHAR(255),
 Phone VARCHAR(10),
 Address VARCHAR(255),
 PRIMARY KEY (Username));

CREATE TABLE Rates
(Barcode INT,
 Username VARCHAR(30),
 Rating TINYINT,
 RatingDate DATE,
 PRIMARY KEY (Barcode, Username),
 FOREIGN KEY (Barcode) REFERENCES Product(Barcode),
 FOREIGN KEY (Username) REFERENCES Customer(Username));

CREATE TABLE `Order`
(ID INT,
 OrderDate DATE,
 ContactName VARCHAR(20),
 PaymentInformation VARCHAR(100),
 DeliveryDate DATE,
 TotalCost DECIMAL(10,2),
 Username VARCHAR(30),
 PRIMARY KEY (ID),
 FOREIGN KEY (Username) REFERENCES Customer(Username));
 
CREATE TABLE OrderItem
(Barcode INT,
 ID INT,
 Quantity TINYINT,
 PRIMARY KEY (Barcode, ID),
 FOREIGN KEY (Barcode) REFERENCES Product(Barcode),
 FOREIGN KEY (ID) REFERENCES `Order`(ID));

   