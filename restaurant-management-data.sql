/********************************************************************************/
/*																				*/
/*	                        Basia Holowenczak and Lois Nam		        		*/
/*																				*/
/*                      Restaurant Management Database Data		        	    */
/*																				*/
/*																				*/
/********************************************************************************/


/*****   Customer DATA   ***********************************************************/
INSERT INTO Customer VALUES (1, 'John', 'Doe', 'johndoe@example.com', '123-456-7891');
INSERT INTO Customer VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210');
INSERT INTO Customer VALUES(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-111-2222');
INSERT INTO Customer VALUES(4, 'Bob', 'Miller', 'bob.miller@example.com', '555-333-4444');
INSERT INTO Customer VALUES(5, 'Emily', 'Davis', 'emily.davis@example.com', '555-555-6666');
INSERT INTO Customer VALUES(6, 'Michael', 'Brown', 'michael.brown@example.com', '555-777-8888'); 
INSERT INTO Customer VALUES(7, 'Olivia', 'Taylor', 'olivia.taylor@example.com', '555-999-1111');
INSERT INTO Customer VALUES(8, 'Daniel', 'Johnson', 'daniel.johnson@example.com', '555-222-3333');
INSERT INTO Customer VALUES(9, 'Sophia', 'Lee', 'sophia.lee@example.com', '555-444-5555');
INSERT INTO Customer VALUES(10, 'William', 'White', 'william.white@example.com', '555-666-7777');
INSERT INTO Customer VALUES(11, 'Ava', 'Anderson', 'ava.anderson@example.com', '555-888-9999');
INSERT INTO Customer VALUES(12, 'James', 'Miller', 'james.miller@example.com', '555-111-2222');


/*****   RESTAURANT DATA   ***********************************************************/
INSERT INTO Restaurant VALUES (1, 'Food Haven', '123 Main Street');
INSERT INTO Restaurant VALUES (2, 'Bistro Delight', '456 Oak Avenue');
INSERT INTO Restaurant VALUES (3, 'Café Paris', '789 Oak Street');
INSERT INTO Restaurant VALUES (4, 'Sushi Palace', '101 Pine Avenue');
INSERT INTO Restaurant VALUES (5, 'Steakhouse Grill', '456 Maple Lane');
INSERT INTO Restaurant VALUES (6, 'Pizza Palace', '789 Elm Street');
INSERT INTO Restaurant VALUES (7, 'Mexican Delight', '567 Pine Street');
INSERT INTO Restaurant VALUES (8, 'Thai Paradise', '789 Maple Avenue');
INSERT INTO Restaurant VALUES (9, 'Seafood Haven', '234 Elm Street');
INSERT INTO Restaurant VALUES (10, 'Vegetarian Bliss', '456 Birch Lane');
INSERT INTO Restaurant VALUES (11, 'Mediterranean Grill', '789 Cedar Street');
INSERT INTO Restaurant VALUES (12, 'Burger Joint', '123 Spruce Avenue');

/*****   RESTAURANT_TABLE DATA   ***********************************************************/
INSERT INTO Restaurant_Table VALUES (1, 1, 4);
INSERT INTO Restaurant_Table VALUES(2, 1, 2);
INSERT INTO Restaurant_Table VALUES(3, 2, 6);
INSERT INTO Restaurant_Table VALUES(4, 2, 4);
INSERT INTO Restaurant_Table VALUES(5, 3, 2);
INSERT INTO Restaurant_Table VALUES(6, 3, 8);
INSERT INTO Restaurant_Table VALUES(7, 4, 3);
INSERT INTO Restaurant_Table VALUES(8, 4, 6);
INSERT INTO Restaurant_Table VALUES(9, 5, 4);
INSERT INTO Restaurant_Table VALUES(10, 5, 2);
INSERT INTO Restaurant_Table VALUES(11, 6, 8);
INSERT INTO Restaurant_Table VALUES(12, 6, 2);

/*****   RESERVATION DATA   ***********************************************************/
INSERT INTO Reservation VALUES (1, 1, 1, 1, TO_DATE('2023-03-12', 'YYYY-MM-DD'), TO_TIMESTAMP('18:00:00', 'HH24:MI:SS'), 3, 0);
INSERT INTO Reservation VALUES (2, 2, 2, 1, TO_DATE('2023-11-08', 'YYYY-MM-DD'), TO_TIMESTAMP('19:30:00', 'HH24:MI:SS'), 2, 0);
INSERT INTO Reservation VALUES (3, 3, 3, 2, TO_DATE('2023-11-09', 'YYYY-MM-DD'), TO_TIMESTAMP('20:00:00', 'HH24:MI:SS'), 2, 0);
INSERT INTO Reservation VALUES (4, 4, 4, 2, TO_DATE('2023-11-10', 'YYYY-MM-DD'), TO_TIMESTAMP('18:30:00', 'HH24:MI:SS'), 4, 0);
INSERT INTO Reservation VALUES (5, 5, 5, 3, TO_DATE('2023-11-11', 'YYYY-MM-DD'), TO_TIMESTAMP('19:45:00', 'HH24:MI:SS'), 3, 1);
INSERT INTO Reservation VALUES (6, 6, 6, 3, TO_DATE('2023-11-12', 'YYYY-MM-DD'), TO_TIMESTAMP('17:15:00', 'HH24:MI:SS'), 5, 0);
INSERT INTO Reservation VALUES (7, 7, 7, 7, TO_DATE('2023-11-13', 'YYYY-MM-DD'), TO_TIMESTAMP('18:30:00', 'HH24:MI:SS'), 2, 0);
INSERT INTO Reservation VALUES (8, 8, 8, 8, TO_DATE('2023-11-14', 'YYYY-MM-DD'), TO_TIMESTAMP('19:00:00', 'HH24:MI:SS'), 3, 1);
INSERT INTO Reservation VALUES (9, 9, 9, 9, TO_DATE('2023-11-15', 'YYYY-MM-DD'), TO_TIMESTAMP('20:15:00', 'HH24:MI:SS'), 4, 0);
INSERT INTO Reservation VALUES (10, 10, 10, 10, TO_DATE('2023-11-16', 'YYYY-MM-DD'), TO_TIMESTAMP('17:45:00', 'HH24:MI:SS'), 2, 0);
INSERT INTO Reservation VALUES (11, 11, 11, 11, TO_DATE('2023-11-17', 'YYYY-MM-DD'), TO_TIMESTAMP('18:30:00', 'HH24:MI:SS'), 5, 0);
INSERT INTO Reservation VALUES (12, 12, 12, 12, TO_DATE('2023-11-18', 'YYYY-MM-DD'), TO_TIMESTAMP('19:00:00', 'HH24:MI:SS'), 3, 1);

/*****   STAFF DATA   ***********************************************************/
INSERT INTO Staff VALUES(1, 'Joe', 'Johnson', 'Manager', 1);
INSERT INTO Staff VALUES (2, 'Bill', 'Williams', 'Host', 1);
INSERT INTO Staff VALUES(3, 'Ashley', 'Anderson', 'Chef de Cuisine', 1);
INSERT INTO Staff VALUES(4, 'Bob', 'Smith', 'Waiter', 1);
INSERT INTO Staff VALUES(5, 'Jill', 'Jones', 'Hostess', 1);
INSERT INTO Staff VALUES(6, 'Noah', 'Brown', 'Sous Chef', 1);
INSERT INTO Staff VALUES(7, 'Chris', 'Taylor', 'Waiter', 2);
INSERT INTO Staff VALUES(8, 'Alex', 'Smith', 'Line Cook', 2);
INSERT INTO Staff VALUES(9, 'Jane', 'Lee', 'Host', 2);
INSERT INTO Staff VALUES(10, 'Megan', 'White', 'Waiter',2);
INSERT INTO Staff VALUES(11, 'Michael', 'Anderson', 'Manager', 3);
INSERT INTO Staff VALUES(12, 'Emily', 'Miller', 'Sous Chef', 3);