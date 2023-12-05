/********************************************************************************/
/*																				*/
/*	                        Basia Holowenczak and Lois Nam		        		*/
/*																				*/
/*                      Restaurant Management Database Schema		        	*/
/*																				*/
/*																				*/
/********************************************************************************/

-- Customer table
CREATE TABLE Customer (
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15), 
    PRIMARY KEY (CustomerID)
    );
--DROP TABLE Customer CASCADE CONSTRAINTS; 

-- Restaurant table
CREATE TABLE Restaurant (
    RestaurantID INT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100), 
    Cuisine VARCHAR(100), 
    Capacity INT,
    PRIMARY KEY (RestaurantID)
    );
--DROP TABLE Restaurant CASCADE CONSTRAINTS; 

-- Restaurant_Table table
CREATE TABLE Restaurant_Table (
    TableID INT,
    RestaurantID INT, 
    Capacity INT,
    PRIMARY KEY (TableID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID));
--DROP TABLE Restaurant_Table CASCADE CONSTRAINTS; 

-- Reservation table
CREATE TABLE Reservation (
    ReservationID INT,
    CustomerID INT,
    TableID INT, 
    RestaurantID INT, 
    ReservationDate DATE,
    ReservationTime TIMESTAMP,
    NumGuests INT,
    IsCancelled CHAR(1), 
    PRIMARY KEY (ReservationID), 
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID), 
    FOREIGN KEY (TableID) REFERENCES Restaurant_Table(TableID), 
    FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID));
--DROP TABLE Reservation CASCADE CONSTRAINTS; 

-- Staff table
CREATE TABLE Staff (
    StaffID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Title VARCHAR(50), 
    RestaurantID INT,
    PRIMARY KEY (StaffID));
    FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID));
--DROP TABLE Staff CASCADE CONSTRAINTS; 

-- Control table
CREATE TABLE Control (
    StaffID INT,
    ReservationID INT,
    PRIMARY KEY (StaffID, ReservationID),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID));
--DROP TABLE Control CASCADE CONSTRAINTS; 
