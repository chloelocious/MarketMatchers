CREATE DATABASE MarketMatchers;

SHOW DATABASES;

USE MarketMatchers;

-- CREATE USER 'webapp'@'%'
--     IDENTIFIED BY 'abc123';

GRANT ALL PRIVILEGES ON MarketMatchers.* TO 'webapp'@'%';

USE MarketMatchers;

# table for Customer
CREATE TABLE Customer (
    customerID char(5) PRIMARY KEY,
    firstName varchar(40),
    lastName varchar(40),
    phoneNum varchar(40),
    moneySpent decimal(5, 2),
    emailAddress varchar(40),
    streetAddress varchar(60),
    zip char(10),
    country varchar(60)
);

# sample data for Customer
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('19384', 'Maurise', 'Deth', '425-274-8213', 23.21 ,'mdeth0@weather.com', '65 Anzinger Drive', '3332', 'Argentina');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('40998', 'Mendie', 'Colafate', '477-728-0608', 45.21,'mcolafate1@upenn.edu', '0 Bayside Place', 'K45', 'Ireland');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('80289', 'Jaimie', 'Calwell', '167-550-8341', 183.20,'jcalwell2@usda.gov', '6207 Waubesa Pass', null, 'China');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('02569', 'Patti', 'Mugridge', '965-625-2937', 122.23,'pmugridge3@gravatar.com', '804 Lyons Junction', '48338', 'Mexico');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('26660', 'Rayshell', 'Hurdle', '225-507-5227', 18.23,'rhurdle4@fotki.com', '0 Scofield Road', '9243', 'Bulgaria');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('55418', 'Ursala', 'Hyland', '921-912-7114', 91.23,'uhyland5@hud.gov', '5 Golf View Point', '685918', 'Russia');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('05901', 'Daisy', 'Cufflin', '466-680-3435', 48.12,'dcufflin6@weebly.com', '998 Vidon Plaza', null, 'Indonesia');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('41899', 'Joshuah', 'Broadfoot', '379-102-0436', 134.12, 'jbroadfoot7@salon.com', '054 Ilene Terrace', null, 'China');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('48448', 'Nicol', 'Farish','558-236-0124', 41.22, 'nfarish8@time.com', '1074 Mallory Road', null, 'China');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('39177', 'Myrvyn', 'O''Fearguise','613-208-5779', 194.21, 'mofearguise9@storify.com', '8 Bartillon Place', '3723', 'Bangladesh');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('41409', 'Bobbe', 'Northidge', '141-554-2636', 12.12, 'bnorthidgea@gov.uk', '690 Myrtle Terrace', '551 84', 'Sweden');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('95687', 'Allie', 'McGaughie','289-723-8770', 41.21, 'amcgaughieb@gov.uk', '85364 Hoard Lane', null, 'Indonesia');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('11631', 'Ginger', 'Childerhouse', '777-504-0360', 102.21, 'gchilderhousec@weather.com', '6 Laurel Street', null, 'China');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('06496', 'Kippie', 'McPhelim', '503-665-2231', 81.24, 'kmcphelimd@ow.ly', '9472 Porter Lane', '3885-395', 'Portugal');
INSERT INTO Customer (customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)
    VALUES ('78645', 'Brooks', 'Pumfrett', '233-897-9137', 32.12, 'bpumfrette@ft.com', '059 Merry Road', null, 'China');

# table for Invoice
CREATE TABLE Invoice (
	customerID CHAR(5) NOT NULL,
	total DECIMAL(5,2),
	invoiceDate DATE,
	invoiceID char(10) PRIMARY KEY NOT NULL,
	billing VARCHAR(50) NOT NULL,
	CONSTRAINT inv_customerID
                     FOREIGN KEY (customerID)
                     REFERENCES Customer (customerID)
);

# sample data for Invoice
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('19384', 63.20, '2022-02-21', '6977901632', '3557046000566772');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('40998', 38.12, '2021-11-28', '6309411993', '4911070363769475');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('80289', 100.34, '2022-01-30', '3279509295', '5018791800579016');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('02569', 476.12, '2022-11-14', '0250396090', '5007668163326834');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('26660', 425.35, '2022-02-02', '6576352354', '3559597453182366');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('55418', 34.49, '2022-05-12', '2563418413', '201701902643527');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('05901', 185.10, '2021-12-06', '6034343208', '5428041911150107');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('41899', 470.38, '2022-09-26', '1330777648', '3587707707213968');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('48448', 64.13, '2022-08-17', '0393691273', '6709943399380163');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('39177', 134.23, '2022-10-20', '9874135519', '3587219637554628');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('41409', 437.34, '2022-03-08', '2889619108', '30566993265259');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('95687', 210.10, '2022-05-05', '0499314519', '3555594501437102');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('11631', 296.23, '2022-05-27', '1196264105', '3565859008813776');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('06496', 208.45, '2021-12-09', '6343645874', '30214056994099');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('78645', 218.12, '2022-06-05', '1705048491', '3586176953375965');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('26660', 262.46, '2022-02-25', '8308063054', '3589589871805516');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('40998', 61.12, '2022-08-02', '2762127213', '3569537782081804');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('80289', 152.45, '2022-06-06', '0305450753', '4405252909195919');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('39177', 46.23, '2022-06-15', '3270771308', '5100147245617235');
INSERT INTO Invoice (customerID, total, invoiceDate, invoiceID, billing)
    VALUES ('11631', 93.54, '2022-08-07', '2328253714', '3565171888523263');

# table for InvoiceLine
CREATE TABLE InvoiceLine (
	InvoiceLineID CHAR(10) PRIMARY KEY NOT NULL,
	quantity INT,
	unitPrice DECIMAL(5,2),
	invoiceID CHAR(10) NOT NULL,
	productID CHAR(10) NOT NULL,
	CONSTRAINT il_invoiceID
                         FOREIGN KEY (invoiceID)
                         REFERENCES Invoice (invoiceID)
);

# sample data for InvoiceLine
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('9864914403', 74, 20.83, '6977901632', 46);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('5859930621', 68, 70.41, '6309411993', 34);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('0505725898', 51, 12.98, '3279509295', 87);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('2566389894', 57, 67.23, '0250396090', 6);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('7489392298', 17, 36.25, '6576352354', 69);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('5122783419', 22, 81.03, '2563418413', 83);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('6666090840', 33, 8.5, '6034343208', 84);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('7425878695', 17, 96.07, '1330777648', 56);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('5393762999', 68, 42.6, '0393691273', 16);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('8585948346', 44, 52.66, '9874135519', 36);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('5626170304', 57, 76.22, '2889619108', 65);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('8329967800', 60, 13.34, '0499314519', 7);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('7965538924', 86, 1.32, '1196264105', 34);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('8446752911', 87, 7.77, '6343645874', 8);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('6749743962', 99, 49.46, '1705048491', 79);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('1234367571', 91, 44.78, '8308063054', 72);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('6658830436', 89, 31.17, '2762127213', 40);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('3797799246', 45, 87.66, '0305450753', 3);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('3783309317', 81, 2.19, '3270771308', 87);
INSERT INTO InvoiceLine (InvoiceLineID, quantity, unitPrice, invoiceID, productID)
    VALUES ('9333139923', 56, 2.62, '2328253714', 100);

# table for Category
CREATE TABLE Category (
	categoryName VARCHAR(50) NOT NULL,
	categoryID char(5) PRIMARY KEY NOT NULL
);

# sample data for Category
INSERT INTO Category (categoryName, categoryID)
    VALUES ('Home goods', '30851');
INSERT INTO Category (categoryName, categoryID)
    VALUES ('Kitchen', '44489');
INSERT INTO Category (categoryName, categoryID)
    VALUES ('Cosmetics', '36155');
INSERT INTO Category (categoryName, categoryID)
    VALUES ('Clothing', '99684');
INSERT INTO Category (categoryName, categoryID)
    VALUES ('Family', '44717');


# table for Field
CREATE TABLE Field (
	crop_ID CHAR(5) PRIMARY KEY NOT NULL,
	cropName VARCHAR(20),
	plotNumber INT NOT NULL,
	numCropsPlanted INT NOT NULL,
	datePlanted DATE,
	size INT,
    INDEX idx_cropName (cropName)
);

# sample data for Field
INSERT INTO Field (crop_ID, cropName, plotNumber, numCropsPlanted, datePlanted, size)
    VALUES ('87437', 'Corn', 4, 500, '2022-11-22', 10000);
INSERT INTO Field (crop_ID, cropName, plotNumber, numCropsPlanted, datePlanted, size)
    VALUES ('29770', 'Medium-sized carrot', 1, 500, '2022-05-22', 8000);
INSERT INTO Field (crop_ID, cropName, plotNumber, numCropsPlanted, datePlanted, size)
    VALUES ('26051', 'Iceberg lettuce', 2, 500, '2022-04-30', 7500);
INSERT INTO Field (crop_ID, cropName, plotNumber, numCropsPlanted, datePlanted, size)
    VALUES ('34787', 'Medium-sized radish', 11, 500, '2022-05-01', 1200);
INSERT INTO Field (crop_ID, cropName, plotNumber, numCropsPlanted, datePlanted, size)
    VALUES ('59086', 'Fuji Apple', 9, 500, '2022-10-23', 500);
INSERT INTO Field (crop_ID, cropName, plotNumber, numCropsPlanted, datePlanted, size)
    VALUES ('64021', 'Cabbage head', 7, 500, '2022-11-22', 6000);

# table for Harvest
CREATE TABLE Harvest
(
	invoiceID CHAR(10),
	InvoiceLineID CHAR(10),
	quantity INT NOT NULL,
	crop_ID CHAR(5) NOT NULL,
	cropName VARCHAR(20),
	CONSTRAINT harvest_invoiceID
        FOREIGN KEY (invoiceID)
        REFERENCES InvoiceLine (invoiceID),
    CONSTRAINT harvest_InvoiceLineID
        FOREIGN KEY (InvoiceLineID)
        REFERENCES InvoiceLine (InvoiceLineID),
    CONSTRAINT harvest_crop_ID
        FOREIGN KEY (crop_ID)
        REFERENCES Field (crop_ID),
    CONSTRAINT harvest_cropName
        FOREIGN KEY (cropName)
        REFERENCES Field (cropName)
);

# sample data for Harvest
INSERT INTO Harvest (invoiceID, InvoiceLineID, quantity, crop_ID, cropName)
    VALUES ('6977901632', '9864914403', 10, '34787', 'Medium-sized radish');
INSERT INTO Harvest (invoiceID, InvoiceLineID, quantity, crop_ID, cropName)
    VALUES ('6309411993', '5859930621', 10, '26051', 'Iceberg lettuce');
INSERT INTO Harvest (invoiceID, InvoiceLineID, quantity, crop_ID, cropName)
    VALUES ('3279509295', '0505725898', 10, '64021', 'Cabbage head');
INSERT INTO Harvest (invoiceID, InvoiceLineID, quantity, crop_ID, cropName)
    VALUES ('1330777648', '2566389894', 10, '29770', 'Medium-sized carrot');
INSERT INTO Harvest (invoiceID, InvoiceLineID, quantity, crop_ID, cropName)
    VALUES ('2762127213', '5859930621', 4, '87437', 'Corn');
INSERT INTO Harvest (invoiceID, InvoiceLineID, quantity, crop_ID, cropName)
    VALUES ('3270771308', '2566389894', 5, '59086', 'Fuji Apple');

# table for ProductMaker
CREATE TABLE ProductMaker (
    PM_ID char(10) PRIMARY KEY,
    firstName varchar(40),
    lastName varchar(40),
    phoneNumber char(12),
    emailAddress varchar(50),
    streetAddress varchar(50),
    city varchar(50),
    state varchar(30),
    zip char(20)
);

# sample data for ProductMaker
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('4878910526', 'Morena', 'Jewson', '554-520-4055', 'mjewson0@indiatimes.com', '9 Crest Line Parkway', 'Świnice Warckie', null, '99-140');
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('1534837132', 'Shepperd', 'Luce', '115-562-3098', 'sluce1@mit.edu', '32664 Becker Pass', 'Llama', null, null);
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('9485196504', 'Milo', 'Champerlen', '335-601-6483', 'mchamperlen2@imageshack.us', '27 Drewry Center', 'Soubré', null, null);
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('6404487640', 'Zarla', 'Sandells', '304-334-1920', 'zsandells3@4shared.com', '57928 Dexter Street', 'Caen', 'Basse-Normandie', '14040 CEDEX 4');
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('9073500877', 'Brennen', 'Hauxley', '832-824-8341', 'bhauxley4@posterous.com', '9858 Meadow Valley Avenue', 'Rejasa Kaja', null, null);
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('5103651483', 'Emmalynne', 'Martello', '403-944-3869', 'emartello5@shutterfly.com', '71 Judy Junction', 'Santa Elena de Uairén', null, null);
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('9297937268', 'Roderic', 'Debney', '679-541-7861', 'rdebney6@cbsnews.com', '71 Springs Plaza', 'Shangbahe', null, null);
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('6441851784', 'Skippie', 'Allitt', '694-345-9484', 'sallitt7@youtube.com', '51 Dennis Hill', 'Yuecheng', null, null);
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('1963218361', 'Claudianus', 'Ashingden', '554-343-5755', 'cashingden8@geocities.com', '096 Bonner Hill', 'Sandayong Sur', null, '6344');
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('5705049994', 'Judon', 'Seegar', '194-823-5778', 'jseegar9@opensource.org', '01011 Northwestern Pass', 'Barubandung', null, null);
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('0049629891', 'Pryce', 'Cullington', '305-603-9244', 'pcullingtona@uiuc.edu', '0 Aberg Plaza', 'Sobral', 'Lisboa', '2530-285');
INSERT INTO ProductMaker (PM_ID, firstName, lastName, phoneNumber, emailAddress, streetAddress, city, state, zip)
    VALUES ('7401243873', 'Blondell', 'Mazdon', '975-169-4217', 'bmazdonb@time.com', '0 Nelson Crossing', 'Angoram', null, null);

# table for Plants
CREATE TABLE Plants (
  plantName varchar(40) PRIMARY KEY NOT NULL,
  plantSpecies varchar(40) NOT NULL,
  cropName varchar(20) NOT NULL,
  crop_ID char(5) NOT NULL,
  cost double(40, 3),
  sellingPrice double(40, 3),
  PM_ID char(10) NOT NULL,
  INDEX idx_plantSpecies (plantSpecies),
  CONSTRAINT plants_cropName
                    FOREIGN KEY (cropName)
                    REFERENCES Field (cropName),
  CONSTRAINT plants_cropID
                    FOREIGN KEY (crop_ID)
                    REFERENCES Field (crop_ID),
  CONSTRAINT plants_PM_ID
                    FOREIGN KEY (PM_ID)
                    REFERENCES ProductMaker (PM_ID)
);

# sample data for Plants
INSERT INTO Plants (plantName, plantSpecies, cropName, crop_ID, cost, sellingPrice, PM_ID)
    VALUES ('Maize', 'Zea mays', 'Corn', '87437', '1.49', '5.73', '4878910526');
INSERT INTO Plants (plantName, plantSpecies, cropName, crop_ID, cost, sellingPrice, PM_ID)
    VALUES ('Lettuce', 'Lactuca sativa', 'Iceberg lettuce', '26051', '1.39', '4.08', '1534837132');
INSERT INTO Plants (plantName, plantSpecies, cropName, crop_ID, cost, sellingPrice, PM_ID)
    VALUES ('Carrot', 'Daucus carota', 'Medium-sized carrot', '29770', '1.72', '3.70', '9485196504');
INSERT INTO Plants (plantName, plantSpecies, cropName, crop_ID, cost, sellingPrice, PM_ID)
    VALUES ('Radish', 'Raphanus sativus', 'Medium-sized radish', '34787', '0.85', '3.53', '6404487640');
INSERT INTO Plants (plantName, plantSpecies, cropName, crop_ID, cost, sellingPrice, PM_ID)
    VALUES ('Cabbage', 'Brassica oleracea var. capitata', 'Cabbage head', '64021', '1.24', '4.50', '5103651483');
INSERT INTO Plants (plantName, plantSpecies, cropName, crop_ID, cost, sellingPrice, PM_ID)
    VALUES ('Apple', 'Malus domestica', 'Fuji Apple', '59086', '0.57', '3.99', '6404487640');

# table for Product
CREATE TABLE Product (
	productID CHAR(10) PRIMARY KEY NOT NULL,
	quantity INT,
	productDescription VARCHAR(40),
	productName VARCHAR(20),
	sellingPrice DECIMAL(5, 2),
	costToMake DECIMAL(5, 2),
	categoryID CHAR(5),
	PM_ID CHAR(10),
	CONSTRAINT pr_productName UNIQUE (productName),
	CONSTRAINT pr_PM_ID
                     FOREIGN KEY (PM_ID)
                     REFERENCES ProductMaker (PM_ID)
);

# sample data for Product
INSERT INTO Product (productID, quantity, productDescription, productName, sellingPrice, costToMake, categoryID, PM_ID)
    VALUES ('8247971116', 20, 'Wool socks', 'Socks', 8.00, 3.19, '99684', '1534837132');
INSERT INTO Product (productID, quantity, productDescription, productName, sellingPrice, costToMake, categoryID, PM_ID)
    VALUES ('4239220552', 20, 'Wool mittens', 'Mittens', 25.12, 21.44, '99684', '7401243873');
INSERT INTO Product (productID, quantity, productDescription, productName, sellingPrice, costToMake, categoryID, PM_ID)
    VALUES ('8083768537', 40, 'Goat milk hand cream', 'Hand cream', 15.21, 9.12, '36155', '6404487640');
INSERT INTO Product (productID, quantity, productDescription, productName, sellingPrice, costToMake, categoryID, PM_ID)
    VALUES ('2941651343', 60, 'Goat milk skin care moisturizer', 'Moisturizer', 3.99, 1.85, '36155', '9485196504');
INSERT INTO Product (productID, quantity, productDescription, productName, sellingPrice, costToMake, categoryID, PM_ID)
    VALUES ('0343846290', 15, 'Wool scarf', 'Scarf', 30.00, 24.12, '99684', '5103651483');

# table for Enclosure
CREATE TABLE Enclosure (
    enclosureID char(5) PRIMARY KEY NOT NULL,
    type varchar(40),
    size varchar(40),
    dateBuilt date
);

# sample data for Enclosure
INSERT INTO Enclosure (enclosureID, type, size, dateBuilt)
    VALUES ('26161', 'Pig pen', '5000 square feet', '2022-06-21');
INSERT INTO Enclosure (enclosureID, type, size, dateBuilt)
    VALUES ('98704', 'Barn', '10000 square feet', '2009-09-29');
INSERT INTO Enclosure (enclosureID, type, size, dateBuilt)
    VALUES ('81406', 'Chicken coop', '10000 square feet', '2021-09-15');
INSERT INTO Enclosure (enclosureID, type, size, dateBuilt)
    VALUES ('92582', 'Grooming area', '40000 square feet', '2004-11-30');
INSERT INTO Enclosure (enclosureID, type, size, dateBuilt)
    VALUES ('22940', 'Brooder house', '10000 square feet', '2010-05-16');
INSERT INTO Enclosure (enclosureID, type, size, dateBuilt)
    VALUES ('56713', 'Grazing area', '40000 square feet', '2010-05-17');
INSERT INTO Enclosure (enclosureID, type, size, dateBuilt)
    VALUES ('19210', 'Silo', '5000 square feet', '2001-02-18');
INSERT INTO Enclosure (enclosureID, type, size, dateBuilt)
    VALUES ('10283', 'Equipment storage', '5000 square feet', '2020-06-12');
INSERT INTO Enclosure (enclosureID, type, size, dateBuilt)
    VALUES ('29482', 'Hay and feed storage', '5000 square feet', '2014-12-30');

# table for AnimalType
CREATE TABLE AnimalType (
  animalName varchar(40) NOT NULL,
  a_TypeID char(10) PRIMARY KEY NOT NULL,
  enclosureID char(5) NOT NULL,
  INDEX idx_animalName (animalName),
  CONSTRAINT at_enclosureID
                        FOREIGN KEY (enclosureID)
                        REFERENCES Enclosure (enclosureID)
);

# sample data for AnimalType
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Hampshire pig', '8455515188', '29482');
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Berkshire pig', '8875969310', '26161');
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Alpine goat', '2440075768', '98704');
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Sussex chicken', '7873465000', '81406');
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Brahma chicken', '8516904502', '22940');
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Hereford cattle', '9738514525', '19210');
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Simmental cattle', '3763867642', '56713');
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Brown Swiss cattle', '3779573099', '10283');
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Leghorn chicken', '6035450556', '81406');
INSERT INTO AnimalType (animalName, a_TypeID, enclosureID)
    VALUES ('Hampshire sheep', '3376192698', '29482');

# table for AnimalProduct
CREATE TABLE AnimalProduct (
	InvoiceLineID CHAR(10) NOT NULL,
	productName VARCHAR(20),
	animalName VARCHAR(20) NOT NULL,
	a_TypeID CHAR(10) NOT NULL,
	quantity INT,
	CONSTRAINT ap_InvoiceLineID
                           FOREIGN KEY (InvoiceLineID)
                           REFERENCES InvoiceLine (InvoiceLineID),
    CONSTRAINT ap_animalName
                           FOREIGN KEY (animalName)
                           REFERENCES AnimalType (animalName),
    CONSTRAINT ap_a_TypeID
                           FOREIGN KEY (a_TypeID)
                           REFERENCES AnimalType (a_TypeID)
);

# sample data for AnimalProduct
INSERT INTO AnimalProduct (InvoiceLineID, productName, animalName, a_TypeID, quantity)
    VALUES ('7425878695', 'Whole milk', 'Hereford cattle', '9738514525', 30);
INSERT INTO AnimalProduct (InvoiceLineID, productName, animalName, a_TypeID, quantity)
    VALUES ('8446752911', 'Beef', 'Simmental cattle', '3763867642', 60);
INSERT INTO AnimalProduct (InvoiceLineID, productName, animalName, a_TypeID, quantity)
    VALUES ('6749743962', 'Fresh eggs', 'Sussex chicken', '7873465000', 120);
INSERT INTO AnimalProduct (InvoiceLineID, productName, animalName, a_TypeID, quantity)
    VALUES ('3797799246', 'Cheese', 'Brown Swiss cattle', '3779573099', 50);
INSERT INTO AnimalProduct (InvoiceLineID, productName, animalName, a_TypeID, quantity)
    VALUES ('9333139923', 'Pork', 'Hampshire pig', '8455515188', 9);

# table for Livestock
CREATE TABLE Livestock (
  animalSpecies varchar(40) NOT NULL,
  animalName varchar(40) NOT NULL,
  a_TypeID char(10) NOT NULL,
  amount int,
  cost decimal(5, 2),
  sellingPrice decimal(5, 2),
  PM_ID char(10) NOT NULL,
  INDEX idx_animalSpecies (animalSpecies),
  CONSTRAINT ls_animalName
                       FOREIGN KEY (animalName)
                       REFERENCES AnimalType (animalName),
  CONSTRAINT ls_a_TypeID
                       FOREIGN KEY (a_TypeID)
                       REFERENCES AnimalType (a_TypeID),
  CONSTRAINT ls_PM_ID
                       FOREIGN KEY (PM_ID)
                       REFERENCES ProductMaker (PM_ID)
);

# sample data for Livestock
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Sus scrofa domesticus', 'Hampshire pig', '8455515188', 8, 285.62, 242.11, '1534837132');
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Sus scrofa domesticus', 'Berkshire pig', '8875969310', 23, 350.95, 224.20, '1534837132');
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Capra aegagrus hircus', 'Alpine goat', '2440075768', 6, 206.65, 363.73, '7401243873');
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Gallus gallus domesticus', 'Sussex chicken', '7873465000', 9, 259.16, 241.93, '7401243873');
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Gallus gallus domesticus', 'Brahma chicken', '8516904502', 30, 183.77, 277.26, '9297937268');
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Bos taurus taurus', 'Hereford cattle', '9738514525', 25, 284.00, 282.98, '9297937268');
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Bos taurus taurus', 'Simmental cattle', '3763867642', 2, 322.52, 422.65, '0049629891');
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Bos taurus taurus', 'Brown Swiss cattle', '3779573099', 9, 334.55, 425.25, '0049629891');
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Gallus gallus domesticus', 'Leghorn chicken', '6035450556', 9, 260.75, 283.25, '9073500877');
INSERT INTO Livestock (animalSpecies, animalName, a_TypeID, amount, cost, sellingPrice, PM_ID)
    VALUES ('Ovis aries', 'Hampshire sheep', '3376192698', 11, 340.75, 453.25, '9073500877');


# table for Website
CREATE TABLE Website (
    URL varchar(40) PRIMARY KEY
);

# sample data for Website
INSERT INTO Website (URL) VALUES ('creativecommons.org');
INSERT INTO Website (URL) VALUES ('etsy.com');
INSERT INTO Website (URL) VALUES ('google.com');
INSERT INTO Website (URL) VALUES ('wikispaces.com');
INSERT INTO Website (URL) VALUES ('blogspot.com');
INSERT INTO Website (URL) VALUES ('yelp.com');

# table for Flyer
CREATE TABLE Flyer (
    locationPosted varchar(40) PRIMARY KEY
);

# sample data for Flyer
INSERT INTO Flyer (locationPosted) VALUES ('1903 Mitchell Lane');
INSERT INTO Flyer (locationPosted) VALUES ('34168 Monica Crossing');
INSERT INTO Flyer (locationPosted) VALUES ('055 Bluejay Pass');
INSERT INTO Flyer (locationPosted) VALUES ('4 6th Parkway');
INSERT INTO Flyer (locationPosted) VALUES ('3 Daystar Circle');
INSERT INTO Flyer (locationPosted) VALUES ('6 Alpine Park');
INSERT INTO Flyer (locationPosted) VALUES ('13778 Mendota Trail');
INSERT INTO Flyer (locationPosted) VALUES ('67457 Independence Lane');
INSERT INTO Flyer (locationPosted) VALUES ('10476 Bartillon Drive');
INSERT INTO Flyer (locationPosted) VALUES ('31 Bluestem Way');
INSERT INTO Flyer (locationPosted) VALUES ('6187 Tennessee Pass');
INSERT INTO Flyer (locationPosted) VALUES ('786 Drewry Hill');
INSERT INTO Flyer (locationPosted) VALUES ('3 Troy Drive');
INSERT INTO Flyer (locationPosted) VALUES ('6 Chinook Avenue');
INSERT INTO Flyer (locationPosted) VALUES ('6 Chive Circle');

# table for MarketStand
CREATE TABLE MarketStand (
    standName varchar(40) NOT NULL,
    standID char(10) PRIMARY KEY,
    standDescription varchar(100),
    location varchar(60),
    INDEX idx_standName (standName)
);

INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Johns Inc', '3428781511', 'Produce goods and products', '438 Garrison Way');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Jacobi, Robel and Jast', '7172833058', 'Animal goods and products', '39 Memorial Lane');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Renner, Haley and Satterfield', '0705063186', 'Home goods and products', '9 Texas Parkway');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Crist, Altenwerth and Ritchie', '8279540148', 'Produce goods and products', '5932 Rowland Crossing');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Stanton-Swaniawski', '2537190505', 'Animal goods and products', '2938 Arkansas Point');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Kris, McGlynn and Conn', '7397371787', 'Animal goods and products', '606 Ronald Regan Circle');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Stanton and Sons', '4731002869', 'Home goods and products', '3206 Michigan Street');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Dach-Parisian', '3605029191', 'Home goods and products', '23398 1st Place');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Wilderman Group', '8676754209', 'Animal goods and products', '0660 Lillian Trail');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Bashirian Group', '2159525189', 'Produce goods and products', '8388 Bunker Hill Alley');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Prosacco and Sons', '4505416739', 'Home goods and products', '73 1st Pass');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Lueilwitz LLC', '8818807196', 'Produce goods and products', '5066 Chive Parkway');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Skiles Inc', '4641896070', 'Animal goods and products', '92008 Monica Court');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Torp, Weber and Tromp', '1384261338', 'Animal goods and products', '39 Welch Avenue');
INSERT INTO MarketStand (standName, standID, standDescription, location)
    VALUES ('Olson Inc', '9443448750', 'Produce goods and products', '2079 Basil Way');

# table for HostingSource
CREATE TABLE HostingSource (
    eventName varchar(60) PRIMARY KEY,
    URL varchar(40),
    locationPosted varchar(40),
    productType varchar(60),
    sponsor varchar(20),
    contactInformation varchar(20),
    firstName varchar(40),
    lastName varchar(40),
    emailAddress varchar(40),
    standName varchar(40),
    standID char(10),
    CONSTRAINT hs_URL
        FOREIGN KEY (URL)
        REFERENCES Website (URL),
    CONSTRAINT hs_locationPosted
        FOREIGN KEY (locationPosted)
        REFERENCES Flyer (locationPosted),
    CONSTRAINT hs_standName
        FOREIGN KEY (standName)
        REFERENCES  MarketStand (standName),
    CONSTRAINT hs_standID
        FOREIGN KEY (standID)
        REFERENCES MarketStand (standID)
);

# sample data for hosting source
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Holiday Market', 'Produce, animal goods, home goods', 'Skarts', '315-617-0301', 'Sasha', 'Baudy', 'sbaudy0@de.vu', 'creativecommons.org', '1903 Mitchell Lane', 'Johns Inc', '3428781511');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Fresh and Fun Open Market', 'Produce, animal goods, home goods', 'Browsebug', '233-151-7644', 'Mikkel', 'Nutley', 'mnutley1@boston.com', 'wikispaces.com', '34168 Monica Crossing', 'Jacobi, Robel and Jast', '7172833058');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Join Us! Farmers Market', 'Produce, animal goods, home goods', 'DabZ', '797-306-4351', 'Mariellen', 'Braiden', 'mbraiden2@moonfruit.com', 'creativecommons.org', '055 Bluejay Pass', 'Renner, Haley and Satterfield', '0705063186');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Come celebrate! Autumn Market', 'Produce, animal goods, home goods', 'Creative collective', '729-867-9466', 'Kirbee', 'Klezmski', 'kklezmski3@blinklist.com', 'blogspot.com', '055 Bluejay Pass', 'Crist, Altenwerth and Ritchie', '8279540148');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Harvest Mart', 'Produce', 'Skaboo', '505-860-5032', 'Candida', 'Jelks', 'cjelks4@tripadvisor.com', 'wikispaces.com', '4 6th Parkway', 'Stanton-Swaniawski', '2537190505');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Fresh Foods for All', 'Produce, animal goods', 'Skynoodle', '957-499-7402', 'Dorie', 'Philliskirk', 'dphilliskirk5@yale.edu', 'google.com', '3 Daystar Circle', 'Kris, McGlynn and Conn', '7397371787');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Magic Meats and Beans', 'Produce, animal goods', 'Teklist', '408-769-4788', 'Valentin', 'Romeuf', 'blogspot.com', 'google.com', '67457 Independence Lane', 'Stanton and Sons', '4731002869');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Clothes, Cosmetics, and Food -- What More Could You Want!', 'Produce, home goods', 'Gigabox', '841-698-9306', 'Francis', 'Pittoli', 'fpittoli7@is.gd', 'google.com', '67457 Independence Lane', 'Dach-Parisian', '3605029191');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Farmer Collective Market', 'Produce, animal goods', 'Dabvine', '771-285-6456', 'Rory', 'Meiklejohn', 'rmeiklejohn8@europa.eu', 'etsy.com', '10476 Bartillon Drive', 'Wilderman Group', '8676754209');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Butcher and Grower Coalition', 'Produce, animal goods', 'Riffpedia', '350-679-3620', 'Annetta', 'Lamburne', 'alamburne9@symantec.com', 'etsy.com', '31 Bluestem Way', 'Bashirian Group', '2159525189');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Home Grown Fest', 'Produce, animal goods, home goods', 'Twitterbridge', '547-355-3372', 'Bernadina', 'Tombs', 'btombsa@webs.com', 'yelp.com', '10476 Bartillon Drive', 'Prosacco and Sons', '4505416739');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Fruits Festival', 'Produce', 'Kwilith', '908-234-4848', 'Rod', 'Patshull', 'rpatshullb@sbwire.com', 'google.com', '6187 Tennessee Pass', 'Lueilwitz LLC', '8818807196');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Equinox Mart', 'Produce, animal goods, home goods', 'Flashpoint', '851-523-1532', 'Aube', 'Sedge', 'asedgec@networkadvertising.org', 'yelp.com', '6 Chive Circle', 'Skiles Inc', '4641896070');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Open Market Square', 'Produce, animal goods, home goods', 'Kare', '629-157-1162', 'Averil', 'Burd', 'aburdd@twitter.com', 'etsy.com', '3 Troy Drive', 'Torp, Weber and Tromp', '1384261338');
INSERT INTO HostingSource (eventName, productType, sponsor, contactInformation, firstName, lastName, emailAddress, URL, locationPosted, standName, standID)
    VALUES ('Small Business Swap', 'Produce, animal goods, home goods', 'Topdrive', '154-879-5250', 'Aurelie', 'Tabourier', 'atabouriere@instagram.com', 'blogspot.com', '6 Chinook Avenue', 'Olson Inc', '9443448750');

# table for Employee
CREATE TABLE Employee(
    IDNum char(10) PRIMARY KEY,
    firstName varchar(40),
    lastName varchar(40),
    bDate varchar(30),
    phoneNumber char(12),
    streetAddress varchar(50),
    city varchar(50),
    state varchar(30),
    zip char(20),
    mgrID char(10),
    standName varchar(40),
    standID char(10),
    CONSTRAINT emp_mgrID
        FOREIGN KEY (mgrID)
        REFERENCES Employee (IDNum),
    CONSTRAINT emp_standName
        FOREIGN KEY (standName)
        REFERENCES MarketStand (standName),
    CONSTRAINT emp_standID
        FOREIGN KEY (standID)
        REFERENCES MarketStand (standID)
);

# sample data for Employee
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('2628759659', 'Yancy', 'Christoffe', '1/6/2022', '633-547-5965', '797 Amoth Circle', 'Ponta Grossa', null, '84000-000', null, 'Johns Inc', '3428781511');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('2242847104', 'Jecho', 'Baxster', '4/18/2022', '870-140-7612', '62585 Meadow Vale Junction', 'Pecatu', null, null, '2628759659', 'Jacobi, Robel and Jast', '7172833058');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('1214835821', 'Arte', 'Astie', '5/13/2022', '676-305-7057', '06 Menomonie Avenue', 'Ketitang Wetan', null, null, '2628759659', 'Renner, Haley and Satterfield', '0705063186');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('5597639005', 'Jobi', 'Akam', '4/17/2022', '912-248-9160', '84 Sage Center', 'Fengjiang', null, null, '2242847104', 'Crist, Altenwerth and Ritchie', '8279540148');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('5543020805', 'Lilah', 'Croxall', '4/21/2022', '604-724-6983', '37 Tennyson Pass', 'San Vicente', null, '6419', '1214835821', 'Stanton-Swaniawski', '2537190505');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('8727782549', 'Willyt', 'Ivankovic', '3/18/2022', '459-295-3042', '303 Village Green Parkway', 'Ambat', null, null, '2628759659', 'Kris, McGlynn and Conn', '7397371787');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('9790817231', 'Janaya', 'Skures', '9/18/2022', '952-396-9049', '54 New Castle Alley', 'Uście Gorlickie', null, '38-315', '2628759659', 'Stanton and Sons', '4731002869');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('4204823300', 'Selina', 'Fear', '1/20/2022', '234-467-4493', '4 Oxford Lane', 'Repelón', null, '085048', '2242847104', 'Dach-Parisian', '3605029191');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('7065018229', 'Cal', 'MacMakin', '6/29/2022', '457-677-5581', '43387 Florence Park', 'Tonoshō', null, '761-4154', '2242847104', 'Wilderman Group', '8676754209');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('7377996552', 'Tessa', 'Soldi', '6/27/2022', '171-526-7489', '0 Daystar Circle', 'Banjar Sembunggede', null, null, '1214835821', 'Bashirian Group', '2159525189');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('7690963315', 'Solomon', 'MacHostie', '5/3/2022', '281-658-2191', '72394 Westport Plaza', 'Houston', 'Texas', '77293', '1214835821', 'Prosacco and Sons', '4505416739');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('5627714727', 'Giustino', 'Boatwright', '7/6/2022', '978-424-3167', '8 American Ash Lane', 'Leonídio', null, null, '2628759659', 'Lueilwitz LLC', '8818807196');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('1076595340', 'Clovis', 'Dimitresco', '1/18/2022', '932-885-3578', '9 Dapin Crossing', 'Huế', null, null, '2628759659', 'Skiles Inc', '4641896070');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('5064997892', 'Staford', 'Lamden', '3/15/2022', '267-367-7410', '8 Dovetail Trail', 'Jangas', null, null, '2242847104', 'Torp, Weber and Tromp', '1384261338');
INSERT INTO Employee (IDNum, firstName, lastName, bDate, phoneNumber, streetAddress, city, state, zip, mgrID, standName, standID)
    VALUES ('6357639087', 'Johannah', 'Empleton', '2/15/2022', '358-258-3244', '766 Hudson Terrace', 'Beverwijk', 'Provincie Noord-Holland', '1944', '2242847104', 'Olson Inc', '9443448750');

# table for Product Maker Market Stand
CREATE TABLE ProductMakerMS (
    PM_ID char(10),
    standName varchar(40),
    standID char(10),
    CONSTRAINT pm_ms_ID
        FOREIGN KEY (PM_ID)
        REFERENCES ProductMaker (PM_ID),
    CONSTRAINT pm_ms_standName
        FOREIGN KEY (standName)
        REFERENCES  MarketStand (standName),
    CONSTRAINT pm_ms_standID
        FOREIGN KEY (standID)
        REFERENCES MarketStand (standID)
);

# sample data for Product Maker Market Stand
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('4878910526', 'Johns Inc', '3428781511');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('1534837132', 'Jacobi, Robel and Jast', '7172833058');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('9485196504', 'Renner, Haley and Satterfield', '0705063186');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('6404487640', 'Crist, Altenwerth and Ritchie', '8279540148');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('9073500877', 'Stanton-Swaniawski', '2537190505');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('5103651483', 'Kris, McGlynn and Conn', '7397371787');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('9297937268', 'Stanton and Sons', '4731002869');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('6441851784', 'Dach-Parisian', '3605029191');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('1963218361', 'Wilderman Group', '8676754209');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('5705049994', 'Bashirian Group', '2159525189');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('1534837132', 'Prosacco and Sons', '4505416739');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('9073500877', 'Lueilwitz LLC', '8818807196');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('9485196504', 'Skiles Inc', '4641896070');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('6404487640', 'Torp, Weber and Tromp', '1384261338');
INSERT INTO ProductMakerMS (PM_ID, standName, standID)
    VALUES ('1534837132', 'Olson Inc', '9443448750');

# table for Tool
CREATE TABLE Tool (
    toolName varchar(40) NOT NULL,
    toolID char(5) PRIMARY KEY NOT NULL,
    INDEX idx_toolName (toolName)
);

# sample data for Tool
INSERT INTO Tool (toolName, toolID)
    VALUES ('Hand shears', '10293');
INSERT INTO Tool (toolName, toolID)
    VALUES ('Ear tag', '42832');
INSERT INTO Tool (toolName, toolID)
    VALUES ('Hoe', '18213');
INSERT INTO Tool (toolName, toolID)
    VALUES ('Shovel', '19381');
INSERT INTO Tool (toolName, toolID)
    VALUES ('Bucket', '53813');
INSERT INTO Tool (toolName, toolID)
    VALUES ('Strainer', '39103');
INSERT INTO Tool (toolName, toolID)
    VALUES ('Tree tool kit', '29190');

# table for ProductTool
CREATE TABLE ProductTool (
    toolName varchar(40) NOT NULL,
    toolID char(5) NOT NULL,
    productID char(10) NOT NULL,
    CONSTRAINT pt_toolName
                         FOREIGN KEY (toolName)
                         REFERENCES Tool (toolName),
    CONSTRAINT pt_toolID
                         FOREIGN KEY (toolID)
                         REFERENCES Tool (toolID),
    CONSTRAINT pt_productID
                         FOREIGN KEY (productID)
                         REFERENCES Product (productID)
);

# sample data for ProductTool
INSERT INTO ProductTool (toolName, toolID, productID)
    VALUES ('Hand shears', '10293', '8247971116');
INSERT INTO ProductTool (toolName, toolID, productID)
    VALUES ('Hand shears', '10293', '4239220552');
INSERT INTO ProductTool (toolName, toolID, productID)
    VALUES ('Bucket', '53813', '8083768537');
INSERT INTO ProductTool (toolName, toolID, productID)
    VALUES ('Bucket', '53813', '2941651343');

# table for LivestockTool
CREATE TABLE LivestockTool (
  animalSpecies varchar(40) NOT NULL,
  toolName varchar(40) NOT NULL,
  toolID char(5) NOT NULL,
  CONSTRAINT ls_animalSpecies
                           FOREIGN KEY (animalSpecies)
                           REFERENCES Livestock (animalSpecies),
  CONSTRAINT ls_toolName
                           FOREIGN KEY (toolName)
                           REFERENCES Tool (toolName),
  CONSTRAINT ls_toolID
                           FOREIGN KEY (toolID)
                           REFERENCES Tool (toolID)
);

# sample data for LivestockTool
INSERT INTO LivestockTool (animalSpecies, toolName, toolID)
    VALUES ('Ovis aries', 'Hand shears', '10293');
INSERT INTO LivestockTool (animalSpecies, toolName, toolID)
    VALUES ('Bos taurus taurus', 'Bucket', '53813');
INSERT INTO LivestockTool (animalSpecies, toolName, toolID)
    VALUES ('Sus scrofa domesticus', 'Ear tag', '42832');
INSERT INTO LivestockTool (animalSpecies, toolName, toolID)
    VALUES ('Capra aegagrus hircus', 'Ear tag', '42832');

# table for PlantTool
CREATE TABLE PlantTool (
  plantName varchar(40) NOT NULL,
  plantSpecies varchar(40) NOT NULL,
  toolName varchar(40) NOT NULL,
  toolID char(5) NOT NULL,
  CONSTRAINT plt_plantName
                       FOREIGN KEY (plantName)
                       REFERENCES Plants (plantName),
  CONSTRAINT plt_plantSpecies
                       FOREIGN KEY (plantSpecies)
                       REFERENCES Plants (plantSpecies),
  CONSTRAINT plt_toolName
                       FOREIGN KEY (toolName)
                       REFERENCES Tool (toolName),
  CONSTRAINT plt_toolID
                       FOREIGN KEY (toolID)
                       REFERENCES Tool (toolID)
);

# sample data for PlantTool table
INSERT INTO PlantTool (plantName, plantSpecies, toolName, toolID)
    VALUES ('Carrot', 'Daucus carota', 'Shovel', '19381');
INSERT INTO PlantTool (plantName, plantSpecies, toolName, toolID)
    VALUES ('Radish', 'Raphanus sativus', 'Hoe', '18213');
INSERT INTO PlantTool (plantName, plantSpecies, toolName, toolID)
    VALUES ('Apple', 'Malus domestica', 'Tree tool kit', '29190');