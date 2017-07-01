USE db;

INSERT INTO administrador VALUES (NULL, "admin@gmail.com", 1234);

INSERT INTO catalogo VALUES
(NULL, 10, "Java Stardard 9.0", "5 Meses", "java.png", "Java", 6900),
(NULL, 11, "Visual Studio 2017", "7 Meses", "csharp.png", "CSharp", 7900),
(NULL, 12, "Php 7.0", "6 Meses", "php.png", "PHP", 5999),
(NULL, 13, "Seguridad en Aplicaciones Web", "10Meses", "seguridad informatica.png", "Seguridad Informatica", 8999);

INSERT INTO profesor VALUES
(NULL, "Perez", 30458030, "Java Web", "Victor", 45503245),
(NULL, "Soto", 32775010, ".NET", "Emanuel", 54430344),
(NULL, "Gonzalez", 33544933, "PHP", "Nicolas", 64124533),
(NULL, "Rodriguez", 31584913, "Seguridad Informatica", "Pedro", 65120536);


INSERT INTO curso VALUES
(NULL, 20, "2017-06-24", "13:30", "10:30", 1, 1),
(NULL, 21, "2017-06-24", "12:00", "10:00", 2, 2),
(NULL, 22, "2017-11-00", "13:00", "10:00", 3, 3),
(NULL, 23, "2017-03-10", "14:30", "11:30", 1, 1),
(NULL, 24, "2017-06-10", "14:00", "12:30", 4, 4);
