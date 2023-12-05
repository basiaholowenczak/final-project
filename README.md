# Restaurant Management System 
This is the final project for CSC:4480 Principles of Database Systems with Dr. Nwafor at Villanova University. 

# Project Description
In this Restaurant Reservation System, the database streamlines the booking process for customers, reservation management for restaurants, and oversight for staff.
The system creates a centralized database to store and manage reservation details, including customer information, booking times, and table preferences
It implements a secure and efficient booking system that allows customers to make reservations for specific dates and times 

# Business Rules 
In order to implement our restaurant management service, we had to start with business rules in order to set standards within an organization, serving as a communication tool among users and designers,  describing the nature, role and scope of the data, understanding of business processes, and developing the data model. For our restaurant management service, we felt it was important to make sure that:  
1. Each reservation has a unique reservation ID.
2. Staff can view the reservation list.
3. Customers can book tables for specific date and time slots.
4. Tables can have different capacities (e.g. seating for 2,4,6, etc)
5. Customers can specify the number of guests for their reservation.
6. Customers can cancel or modify their reservations within a specific time frame. 

# ER Diagram 
The business rules informed how we developed our ER Diagram. 
1. To make sure that each reservation has a unique reservation ID, reservation id is the primary key of the reservation table.
2. To make sure that staff can view the reservation list, we made sure there was a “control” relation between the staff and reservation entities.
3. To make sure customers can book tables for specific dates and time slots, the reservation entity has a reservation time and reservation date attribute.
4. To make sure that tables can have different capacities, the table entity has a capacity attribute.
5. To make sure that customers can specifify the number of guests for their reservation, we included number of guests as an attribute in the reservation entity. 
6. To make sure customers can cancel or modify their reservations within a specific time frame, we included a is cancelled attribute to the reservation entity.  

Other parts of our ER diagram include the relationships between entities.  One customer can make multiple reservations, but reservations must be made by the customer. Multiple reservations can assign one table, but each reservation must assign one. Multiple tables belong to only one restaurant, but each table must belong to a restaurant. Multiple staff work for at least one restaurant, but staff must work for only one restaurant. Multiple staff can control multiple reservations and reservations must be controlled by staff.  
![ERD Restaurant Management Schema (1)](https://github.com/basiaholowenczak/final-project/assets/94197712/68ca7cf0-a8ca-4759-843f-1d997bedae90)

# ER Schema 
In order to convert the er model into a schema table, we followed the ER-to-Relational Mapping Algorithm we covered in class. Our goals during mapping were to preserve all information including attributes, maintain constraints, and minimize null values.  

We only had to worry about mapping regular entity types since we did not have any weak entities in our er diagram. We only had to worry about mapping simple attributes since we did not have any multivalued attributes in our er diagram. There were no 1:1 relations in our table or n-ary relations.  

For each entity, we created a relation that included all attributes of the entity. We chose one of the key attributes of each entity as the primary key for each relation.  

There were four 1 to many relationships – ASSIGN, BELONGS_TO, WORKS_FOR, and MAKES. For each regular binary 1:N relationships, we identified the relation that represent the participating entity type at the many side of the relationship type and included as a foreign key in the many entity the primary key of the relation on the one side that represents the other entity type participating in the relation. For example, in the reservation relation for the ASSIGNS relationship, we include the primary key table of the restaurant_table relation as foreign key in the reservation relation and called it tableID.  

There was one many to many relationship – CONTROL. We created a new relation to represent the CONTROL relationship. We included the primary keys of the staff and reservation relations as foreign keys attributes in this relation.  
![Schema Table ](https://github.com/basiaholowenczak/final-project/assets/94197712/53184bef-e6d3-43f8-a41e-99b8391c3ab1)

# How to Run
To open our Restaurant Management System: 
1. Download the "restaurant-management-schema.sql" file in the repository. Open the downloaded file in SQLDeveloper. Run the script to create the schema.
2. Download the "restaurant-management-data.sql" file in the repository. Open the downloaded file in SQLDeveloper. Run the script to populate the schema with data.
3. Download the "restaurant-management-queries" file in the repository. Open the downloaded file in SQLDeveloper. Run the statement associated with the scenario of interest.
4. If there are other scenarios or results from the database that are of interest, create a new SQL file in SQLDeveloper and write the appropriate queries. 

# Contributors
This project was done in collaboration with Lois Nam (https://github.com/loisnam) 
