USE assignment;
CREATE TABLE if not exists products (product_id INT AUTO_INCREMENT PRIMARY KEY,
                                     product_name VARCHAR (70) NOT NULL UNIQUE,
                                     description VARCHAR (100),
                                     supplier_id INT);

INSERT INTO products VALUES (100, 'Marie', 'Tea time baked biscuit', 1),
                   (200, 'HideandSeek', 'chocochip', 2),
                   (300, 'Jim Jam', 'vanilla cream with dollop of jam and sugar crystals', 3),
                   (400, 'Bourbon', 'sandwich style biscuit with chococream filling', 4),
                   (500, 'chocofills', 'baked rich cookie', 5);

CREATE TABLE if not exists suppliers (supplier_id INT AUTO_INCREMENT PRIMARY KEY,
					   supplier_name VARCHAR (20),
                       Location VARCHAR (30));

INSERT INTO suppliers VALUES (1,'Scott', 'Boston'),
							 (2, 'Daniel', 'London'),
                             (3, 'Troy', 'Hampshire'),
                             (4, 'Paul', 'Berkeley'),
                             (5, 'Smith', 'Essex');
                             
CREATE TABLE if not exists stock (stock_id INT AUTO_INCREMENT PRIMARY KEY,
                    product_id INT,
                    balance_stock INT);
                    
INSERT INTO stock VALUES (10, 100, 1000),
						 (20, 200, 2000),
                         (30, 300, 3000),
                         (40, 400, 4000),
                         (50, 500, 5000);

ALTER TABLE products ADD FOREIGN KEY (supplier_id)
REFERENCES suppliers (supplier_id)
ON DELETE CASCADE;

ALTER TABLE stock ADD FOREIGN KEY (product_id)
REFERENCES products (product_id)
ON DELETE CASCADE;

ALTER TABLE suppliers MODIFY supplier_name VARCHAR (20) UNIQUE NOT NULL;

DROP TABLE employee;
CREATE TABLE if not exists employee (empid integer, name varchar(30), salary decimal(10,2));

INSERT INTO employee VALUES (100,'Jon',2000),
                            (200,'Tom', 3000),
                            (300,'Hugh', 7500),
                            (400,'Tom', 750),      
                            (500,'Johnny', 1300),
                            (600,'Hugh', 850), 
                            (700,'Ben', 75),
                            (800,'George', 10000),
                            (900,'Henry', 3000),
                            (1000,'Gregory', 3500),
                            (1100,'Jean', 2700),
                            (1200, 'Will', 6300),
                            (1300, 'Chris', 2250);
                            
SELECT* FROM employee;       
ALTER TABLE employee ADD COLUMN deptno INT after empid;
SELECT* FROM employee;

UPDATE employee SET deptno= 20 where mod(empid,2)=0;
UPDATE employee SET deptno=30 where mod(empid,3)=0;
UPDATE employee SET deptno=40 where mod(empid,4)=0;
UPDATE employee SET deptno=50 where mod(empid,5)=0;
UPDATE employee SET deptno=10 where deptno is NULL;

SELECT*FROM employee;
CREATE INDEX eidx
USING HASH
ON employee(empid);
DESC employee;
SHOW INDEX FROM employee;


				
		

 

					




