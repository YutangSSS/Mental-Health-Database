# Mental-Health-Database
This is a database our group created for Database Design and development course which we drew ERD from scratch and created the database
Designing the Entity-Relationship Diagram (ERD) for the Mental Health Resource Database for me is a combination of logical structuring, user-centric thinking, and integrated feedback in order to reduce redundancy.  Below is my reflection on how I approached this process and the reasoning behind key decisions.

Challenages:

The first step was to understand the purpose of the database—improving accessibility to mental health resources for diverse users, including individuals seeking services, professionals referring clients, and organizations sharing resources. 

The second step is to structure the ERD: we identified the core elements—Users, Service Providers, and Services—as the foundation. Each of these directly relates to the database’s primary goals. Relationships: I focused on how these entities interact, considering real-world scenarios.   To ensure the ERD aligned with these goals, I considered the variety of users which included individuals, professionals and organizations in the Montreal area. There are also challenges that clients are facing with the nature of mental health services: for example, language support, crisis contacts and specializations. After structuring the ERD, one of the biggest challenges was balancing complexity and usability: Tracking multiple relationships (e.g., between providers, services, and specializations) without overcomplicating the design. The Solution: Using junction tables (e.g., Provider_Services) to simplify the relationships while maintaining flexibility. 

