CREATE TABLE employees(
	id serial PRIMARY KEY,
	employee_name VARCHAR(50) NOT NULL);

INSERT INTO employees (employee_name) VALUES('Jose Campbell'),
('Ida Jordan'),
('Raymond Young'),
('Douglas Terry'),
('Harry Hardy'),
('Rachel Nelson'),
('Juan Porter'),
('Jesse Johnson'),
('Scott Obrien'),
('Martha Bailey'),
('Samuel Gonzalez'),
('Theodore Flowers'),
('Karen Price'),
('John Simpson'),
('Joshua Douglas'),
('Eric Obrien'),
('Kay Daniels'),
('Doris Flores'),
('Wilma Harrison'),
('William Henry'),
('Herbert Murray'),
('Pearl Chavez'),
('Anna Clark'),
('Nora Sanders'),
('Mark Foster'),
('William Russell'),
('Joel White'),
('Sue Scott'),
('Paul Thomas'),
('Arthur Moore'),
('Jason Ramos'),
('Sheila Fletcher'),
('Charles Reed'),
('Regina Garcia'),
('Charlotte Thomas'),
('Michael Ray'),
('James Rodriguez'),
('Kenneth Lewis'),
('John Miller'),
('Thomas Wilson'),
('Josephine Bailey'),
('Emily Richards'),
('John Jones'),
('Rebecca Marshall'),
('Willie White'),
('Dennis Gordon'),
('Virginia Thornton'),
('Rene Oliver'),
('Marsha Ryan'),
('Matthew Moore'),
('Bernice Brown'),
('James Lewis'),
('Dorothy Campbell'),
('Nicole Butler'),
('Steven Copeland'),
('Eric Williams'),
('David Gomez'),
('Michael Andrews'),
('John Lane'),
('David Coleman'),
('Sheila Jones'),
('Patricia Lewis'),
('Jean Curtis'),
('Dorothy Haynes'),
('Jason Gray'),
('Peter Gregory'),
('Norma Williams'),
('Geraldine Hamilton'),
('Tim Wilson'),
('Robert Nelson');



CREATE TABLE salary(
    id serial PRIMARY KEY,
    monthly_salary INT NOT NULL);
    
INSERT INTO salary (monthly_salary) 
VALUES (1000),(1100),(1200),(1300),(1400),(1500),(1600),(1700),
       (1800),(1900),(2000),(2100),(2200),(2300),(2400),(2500);
       



CREATE TABLE employee_salary(
	id serial PRIMARY KEY,
	employee_id INT NOT NULL UNIQUE,
	salary_id INT NOT NULL);
	
	
INSERT INTO employee_salary(id,employee_id,salary_id)
VALUES (1,3,7),(2,1,4),(3,5,9),(4,40,13),(5,23,4),(6,70,4),(7,52,10),(8,15,13),(9,26,4),
	   (10,16,1),(11,33,7),(12,4,5),(13,65,6),(14,6,7),(15,7,8),(16,90,8),(17,10,11),(18,8,9),(19,11,10),
	   (20,20,16),(21,29,13),(22,14,15),(23,12,12),(24,89,14),(25,17,12),(26,19,9),(27,18,11),(28,56,2),(29,66,5),(30,37,7),
	   (31,48,6),(32,49,16),(33,77,8),(34,84,4),(35,71,8),(36,79,7),(37,100,13),(38,73,1),(39,82,3),(40,88,2)
	


CREATE TABLE roles(
    id serial PRIMARY KEY,
    role_name INT NOT NULL UNIQUE);



ALTER TABLE roles 
ALTER COLUMN role_name type VARCHAR(30);




INSERT INTO roles(id,role_name)
VALUES  (1,'Junior Python developer'),
        (2,'Middle Python developer'),
        (3,'Senior Python developer'),
        (4,'Junior Java developer'),
        (5,'Middle Java developer'),
        (6,'Senior Java developer'),
        (7,'Junior JavaScript developer'),
        (8,'Middle JavaScript developer'),
        (9,'Senior JavaScript developer'),
        (10,'Junior Manual QA engineer'),
        (11,'Middle Manual QA engineer'),
        (12,'Senior Manual QA engineer'),
        (13,'Project Manager'),
        (14,'Designer'),
        (15,'HR'),
        (16,'CEO'),
        (17,'Sales manager'),
        (18,'Junior Automation QA engineer'),
        (19,'Middle Automation QA engineer'),
        (20,'Senior Automation QA engineer')


CREATE TABLE roles_employee(
	id serial PRIMARY KEY,
	employee_id INT NOT NULL UNIQUE,
	role_id INT NOT NULL)
	
	
INSERT INTO roles_employee(id,employee_id,role_id)
VALUES	(1,7,2),(2,20,4),(3,3,9),(4,5,13),(5,23,4),(6,11,2),(7,10,9),(8,22,13),(9,21,3),(10,34,4),
		(11,6,7),(12,1,1),(13,44,15),(14,2,17),(15,42,3),(16,32,5),(17,69,7),(18,66,14),(19,56,6),(20,25,9),
		(21,62,19),(22,61,12),(23,46,11),(24,58,3),(25,43,10),(26,33,17),(27,40,14),(28,29,1),(29,67,11),(30,19,20),
		(31,30,11),(32,9,19),(33,63,18),(34,24,17),(35,15,18),(36,26,4),(37,14,2),(38,13,7),(39,27,8),(40,68,10)
	



SELECT * FROM employees;
SELECT * FROM salary;
SELECT * FROM employee_salary;
SELECT * FROM roles;
SELECT * FROM roles_employee;








