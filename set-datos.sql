USE db;

INSERT INTO administrador VALUES (NULL, "admin@cursoft.com", 1234);

INSERT INTO usuario VALUES 
(NULL, "Butron", 33742000, "julian@gmail.com", "Julian", 1234, 44530384),
(NULL, "Prada", 37111333, "alex@gmail.com", "Alexander", 1234, 45530387),
(NULL, "Britez", 32942000, "claudio@gmail.com", "Claudio", 1234, 45469954);

INSERT INTO catalogo VALUES
(NULL, 10, "Este es un curso de nivel introductorio donde explicaremos los fundamentos necesarios para empezar a programar utilizando el lenguaje Java.", "2 Meses", "java.png", "Java", 2500),
(NULL, 11, "Aprende a programar desde cero en C#. Crea aplicaciones que se ejecuten en cualquier sistema operativo. Domina las bases del lenguaje y las buenas practicas de C#.", "7 Meses", "csharp.png", "CSharp", 7900),
(NULL, 12, "PHP es el lenguaje mas importante para desarrollo web. Si ya conoces HTML, JavaScript y bases de datos, entonces este curso de PHP  te permitira crear sitios dinamicos en poco tiempo.", "6 Meses", "php.png", "PHP", 5999),
(NULL, 13, "Domina lo Ultimo de los lenguajes mas importantes en la Web: HTML 5 y CSS 3. Aprende a realizar sitios Web de Ultima generacion con poderosos efectos multimediales, animaciones, formularios avanzados y mucho mas.", "6 Meses", "html5+css3.png", "HTML5 + CSS3", 3999),
(NULL, 14, "Aprende a programar en lenguaje SQL con la base de datos mas poderosa del mercado. Diseña y Modela importantes bases de datos utilizando la herramienta administrativa de ORACLE.", "5 Meses", "oracle.png", "Oracle", 4500),
(NULL, 15, "Aprende todo lo necesario para adentrarte en el mundo de la seguridad informatica. Tendras los conocimientos para entender los peligros que corre la información y las tecnicas más usuales para defenderse.", "3 Meses", "seguridad informatica.png", "Seguridad Informatica", 3999),
(NULL, 16, "Un lenguaje de programacion de uso general, orientado a objetos e interpretado, que podes usar para innumerables proyectos o aplicaciones de scripting independientes.", "7 Meses", "python.png", "Python", 6999);

INSERT INTO profesor VALUES
(NULL, "Perez", 30458030, "Java Web", "Victor", 45503245),
(NULL, "Soto", 32775010, ".NET", "Emanuel", 54430344),
(NULL, "Gonzalez", 33544933, "PHP", "Nicolas", 64124533),
(NULL, "Rodriguez", 31584913, "Seguridad Informatica", "Pedro", 65120536),
(NULL, "Pereyra", 32688144, "Diseño Grafico", "Ruben", 44327789);


INSERT INTO curso VALUES
(NULL, 20, "2017-03-24", "13:30", "10:30", 1, 1),
(NULL, 21, "2017-04-26", "12:00", "10:00", 2, 2),
(NULL, 22, "2017-06-08", "13:00", "10:00", 3, 3),
(NULL, 23, "2017-10-03", "14:30", "11:00", 4, 5),
(NULL, 24, "2017-11-10", "14:00", "12:30", 6, 4);
