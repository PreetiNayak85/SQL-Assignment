CREATE DATABASE if not exists assignment;
USE assignment;
CREATE TABLE if not exists authors (authorid INT, name VARCHAR (30));
INSERT INTO authors (authorid, name)
            VAlUES (1, 'J K Rowling'),
                       (2, 'Thomas Hardy'),
                       (3, 'Oscar Wilde'),
                       (4, 'Sidney Sheldon'),
                       (5, 'Alistair Maclean'),
                       (6, 'Jane Autsen'),
                       (7, 'Paulo Coelho'),
                       (8, 'David Anderson'),
                       (9, 'Stephen King'),
                       (10, 'Charles Dickens'); 
UPDATE authors SET name = 'Alastair McNeal' WHERE authorid = 5;  

CREATE TABLE if not exists books (bookid INT, title VARCHAR (100), authorid INT);
INSERT INTO books (bookid, title, authorid)
            VALUES (1, 'Harry Potter and the Philosophers Stone',1),
				   (2,'Harry Potter and the Chamber of Secrets',1),
                   (3,'Harry Potter and the Half-Blood Prince',1),
                   (4,'Harry Potter and the Goblet of Fire',1),
                   (5,'Night Without End',5),
                   (6,'Fear is the Key',5),
                   (7,'Where Eagles Dare',5),
                   (8,'Sense and Sensibility',6),
                   (9,'Pride and Prejudice',6),
                   (10,'Emma',6),
                   (11,'Random Book',22);
DELETE FROM books WHERE bookid = 11;
ALTER TABLE books RENAME TO Favbooks;
ALTER TABLE authors RENAME TO Favauthors;

                    


                      

