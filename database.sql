-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2021 at 12:46 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_advanced_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers_java`
--

CREATE TABLE `quiz_answers_java` (
  `id` smallint UNSIGNED NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_answers_java`
--

INSERT INTO `quiz_answers_java` (`id`, `correct_answer`) VALUES
(1, 'System.out.println(\'Hello World\');'),
(2, 'False'),
(3, '// This is a comment'),
(4, 'String'),
(5, 'int x = 5;'),
(6, 'float x = 2.8f'),
(7, 'length()'),
(8, 'The + sign'),
(9, 'False'),
(10, 'toUpperCase()'),
(11, '=='),
(12, '[]'),
(13, '0'),
(14, 'methodName()'),
(15, 'methodName()'),
(16, 'class'),
(17, 'MyClass myObj = new MyClass();'),
(18, 'True'),
(19, 'Math.max(x, y)'),
(20, '*'),
(21, 'import'),
(22, 'if (x &gt; y)'),
(23, 'while (x &gt; y)'),
(24, 'return'),
(25, 'break');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers_javascript`
--

CREATE TABLE `quiz_answers_javascript` (
  `id` smallint UNSIGNED NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_answers_javascript`
--

INSERT INTO `quiz_answers_javascript` (`id`, `correct_answer`) VALUES
(1, '&lt;script&gt;'),
(2, 'document.getElementById(\'demo\').innerHTML = \'Hello World\''),
(3, 'Both the &lt;head&gt; section and the &lt;body&gt; section are correct'),
(4, '&lt;script src=\'xxx.js\'&gt;'),
(5, 'False'),
(6, 'alert(\'Hello World\');'),
(7, 'function myFunction()'),
(8, 'myFunction()'),
(9, 'if (i == 5)'),
(10, 'if (i != 5)'),
(11, 'while (i &lt;= 10)'),
(12, 'for (i = 0; i &lt;= 5; i++)'),
(13, '// This is a comment'),
(14, '/* This comment has more than one line */'),
(15, 'var colors = [\'red\', \'green\', \'blue\']'),
(16, 'Math.round(7.25)'),
(17, 'Math.max(x, y)'),
(18, 'w2 = window.open(\'http://www.google.com\');'),
(19, 'False'),
(20, 'navigator.appName'),
(21, 'onclick'),
(22, 'var carName;'),
(23, '='),
(24, 'True'),
(25, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers_mysql`
--

CREATE TABLE `quiz_answers_mysql` (
  `id` smallint UNSIGNED NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_answers_mysql`
--

INSERT INTO `quiz_answers_mysql` (`id`, `correct_answer`) VALUES
(1, 'Structured Query Language'),
(2, 'SELECT'),
(3, 'UPDATE'),
(4, 'DELETE'),
(5, 'INSERT INTO'),
(6, 'SELECT FirstName FROM Persons'),
(7, 'SELECT * FROM Persons'),
(8, 'SELECT * FROM Persons WHERE FirstName = \'Peter\''),
(9, 'SELECT * FROM Persons WHERE FirstName LIKE \'a%\''),
(10, 'True'),
(11, 'SELECT * FROM Persons WHERE FirstName = \'Peter\' AND LastName = \'Jackson\''),
(12, 'SELECT * FROM Persons WHERE LastName BETWEEN \'Hansen\' AND \'Pettersen\''),
(13, 'SELECT DISTINCT'),
(14, 'ORDER BY'),
(15, 'SELECT * FROM Persons ORDER BY FirstName DESC'),
(16, 'INSERT INTO Persons VALUES (\'Jimmy\', \'Jackson\')'),
(17, 'INSERT INTO Persons (LastName) VALUES (\'Olsen\')'),
(18, 'UPDATE Persons SET LastName = \'Nilsen\' WHERE LastName = \'Hansen\''),
(19, 'DELETE FROM Persons WHERE FirstName = \'Peter\''),
(20, 'SELECT COUNT(*) FROM Persons'),
(21, 'INNER JOIN'),
(22, 'BETWEEN'),
(23, 'True'),
(24, 'LIKE'),
(25, 'CREATE TABLE Customers');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers_nodejs`
--

CREATE TABLE `quiz_answers_nodejs` (
  `id` smallint UNSIGNED NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_answers_nodejs`
--

INSERT INTO `quiz_answers_nodejs` (`id`, `correct_answer`) VALUES
(1, '$ node'),
(2, '$ npm ls'),
(3, 'Both of the above'),
(4, 'fs.writeFile(path, flags[, mode], callback)'),
(5, 'fs.readdir(path, callback)'),
(6, 'All of the above'),
(7, 'net.createServer([options][, connectionListener])'),
(8, 'TRUE'),
(9, 'http module'),
(10, 'TRUE'),
(11, 'Server'),
(12, 'Asynchronous'),
(13, 'All of the above'),
(14, 'testing node.js/JavaScript expressions'),
(15, 'Local'),
(16, 'Single thread'),
(17, 'Module'),
(18, 'module.exports'),
(19, 'Node Package Manager'),
(20, 'http'),
(21, 'Using require() function'),
(22, 'Node Inspector'),
(23, 'EventEmitter'),
(24, 'All of the above'),
(25, 'All of the above');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers_php`
--

CREATE TABLE `quiz_answers_php` (
  `id` smallint UNSIGNED NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_answers_php`
--

INSERT INTO `quiz_answers_php` (`id`, `correct_answer`) VALUES
(1, 'PHP: Hypertext Preprocessor'),
(2, '&lt;?php...?&gt;'),
(3, 'echo \'Hello World\';'),
(4, '$'),
(5, ';'),
(6, 'Perl and C'),
(7, '$_GET[];'),
(8, 'False'),
(9, 'True'),
(10, 'False'),
(11, '&lt;?php include \'time.inc\'; ?&gt;'),
(12, 'function myFunction()'),
(13, 'fopen(\'time.txt\', \'r\');'),
(14, 'True'),
(15, '$_SERVER'),
(16, '$count++;'),
(17, '/*...*/'),
(18, 'True'),
(19, 'True'),
(20, '$my-Var'),
(21, 'setcookie()'),
(22, 'False'),
(23, '$cars = array(\'Volvo\', \'BMV\', \'Toyota\');'),
(24, 'True'),
(25, '===');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers_python`
--

CREATE TABLE `quiz_answers_python` (
  `id` smallint UNSIGNED NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_answers_python`
--

INSERT INTO `quiz_answers_python` (`id`, `correct_answer`) VALUES
(1, 'print(\'Hello World\')'),
(2, '# This is a comment'),
(3, 'my-var'),
(4, 'Both the other answers are correct'),
(5, '.py'),
(6, 'Both the other answers are correct'),
(7, 'print(type(x))'),
(8, 'def myFunction();'),
(9, 'True'),
(10, 'x = \'Hello\'[0]'),
(11, 'strip()'),
(12, 'upper()'),
(13, 'replace()'),
(14, '*'),
(15, '=='),
(16, '[\'apple\', \'banana\', \'cherry\']'),
(17, '(\'apple\', \'banana\', \'cherry\')'),
(18, '{\'apple\', \'banana\', \'cherry\'}'),
(19, '{\'name\': \'apple\', \'color\': \'green\'}'),
(20, 'LIST'),
(21, 'SET'),
(22, 'if x &gt; y:'),
(23, 'while x &gt; y:'),
(24, 'for x in y:'),
(25, 'break');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_category`
--

CREATE TABLE `quiz_category` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_category`
--

INSERT INTO `quiz_category` (`id`, `name`, `title`) VALUES
(1, 'mysql', 'MySQL'),
(2, 'javascript', 'JavaScript'),
(3, 'java', 'Java'),
(4, 'php', 'PHP'),
(5, 'python', 'Python'),
(6, 'nodejs', 'Node.js');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions_java`
--

CREATE TABLE `quiz_questions_java` (
  `id` smallint UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(100) NOT NULL,
  `answer2` varchar(100) NOT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `correct_answer_id` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_questions_java`
--

INSERT INTO `quiz_questions_java` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer_id`) VALUES
(142, 'What is a correct syntax to output \'Hello World\' in Java?', 'print (\'Hello World\');', 'Console.WriteLine(\'Hello World\');', 'System.out.println(\'Hello World\');', 'echo (\'Hello World\');', 1),
(143, 'Java is short for \'JavaScript\'?', 'False', 'True', NULL, NULL, 2),
(144, 'How do you insert COMMENTS in Java code?', '// This is a comment', '/* This is a comment', '# This is a comment', NULL, 3),
(145, 'Which data type is used to create a variable that should store text?', 'Txt', 'String', 'myString', 'string', 4),
(146, 'How do you create a variable with the numeric value 5?', 'int x = 5;', 'float x = 5;', 'x = 5;', 'num x = 5;', 5),
(147, 'How do you create a variable with the floating number 2.8?', 'float x = 2.8f', 'byte x = 2.8f', 'int x = 2.8f', 'x = 2.8f', 6),
(148, 'Which method can be used to find the length of a string?', 'getLength()', 'len()', 'getSize()', 'length()', 7),
(149, 'Which operator is used to add together two values?', 'The & sign', 'The + sign', 'The * sign', NULL, 8),
(150, 'The value of a string variable can be surrounded by single quotes.', 'False', 'True', NULL, NULL, 9),
(151, 'Which method can be used to return a string in upper case letters?', 'tuc()', 'toUpperCase()', 'upperCase()', 'touppercase()', 10),
(152, 'Which operator can be used to compare two values?', '&lt;&gt;', '&gt;&lt;', '==', '=', 11),
(153, 'To declare an array in Java, define the variable type with:', '{}', '[]', '()', NULL, 12),
(154, 'Array indexes start with:', '0', '1', NULL, NULL, 13),
(155, 'How do you create a method in Java?', 'methodName[]', 'methodName.', '(methodName)', 'methodName()', 14),
(156, 'How do you call a method in Java?', 'methodName()', 'methodName.', '(methodName)', 'methodName[]', 15),
(157, 'Which keyword is used to create a class in Java?', 'class', 'class()', 'className', 'MyClass', 16),
(158, 'What is the correct way to create an object called myObj of MyClass?', 'class myObj = new MyClass();', 'MyClass myObj = new MyClass();', 'class MyClass = new myObj();', 'new myObj = MyClass();', 17),
(159, 'In Java, it is possible to inherit attributes and methods from one class to another.', 'True', 'False', NULL, NULL, 18),
(160, 'Which method can be used to find the highest value of x and y?', 'Math.largest(x, y)', 'Math.maximum(x, y)', 'Math.maxNum(x, y)', 'Math.max(x, y)', 19),
(161, 'Which operator is used to multiply numbers?', '*', '#', 'x', '%', 20),
(162, 'Which keyword is used to import a package from the Java API library', 'lib', 'package', 'gelib', 'import', 21),
(163, 'How do you start writing an if statement in Java?', 'if (x &gt; y)', 'if x &gt; y', 'if x &gt; y then', NULL, 22),
(164, 'How do you start writting a while loop in Java?', 'while (x &gt; y)', 'x &gt; y while {', 'while x &gt; y {', 'whie x &gt; y:', 23),
(165, 'Which keyword is used to return a value inside a method?', 'break', 'return', 'void', 'get', 24),
(166, 'Which ketword is used to stop a loop', 'exit', 'stop', 'return', 'break', 25);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions_javascript`
--

CREATE TABLE `quiz_questions_javascript` (
  `id` smallint UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(100) NOT NULL,
  `answer2` varchar(100) NOT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `correct_answer_id` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_questions_javascript`
--

INSERT INTO `quiz_questions_javascript` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer_id`) VALUES
(1, 'Inside which HTML element do we put the JavaScript?', '&lt;script&gt;', '&lt;scripting&gt;', '&lt;javascript&gt;', '&lt;js&gt;', 1),
(2, 'What is the correct JavaScript syntax to change the content of the HTML element below?', '#demo.innerHTML = \'Hello World\'', 'document.getElementByName(\'p\').innerHTML = \'Hello World\'', 'document.getElementById(\'demo\').innerHTML = \'Hello World\'', 'document.getElement(\'p\').innerHTML = \'Hello World\'', 2),
(3, 'Where is the correct place to insert a JavaScript?', 'Both the &lt;head&gt; section and the &lt;body&gt; section are correct', 'The &lt;body&gt; section', 'The &lt;head&gt; section', NULL, 3),
(4, 'What is the correct syntax for referring to an external script called \'xxx.js\'?', '&lt;script name=\'xxx.js\'&gt;', '&lt;script src=\'xxx.js\'&gt;', '&lt;script href=\'xxx.js\'&gt;', NULL, 4),
(5, 'The external JavaScript file must contain the &lt;script&gt; tag.', 'False', 'True', NULL, NULL, 5),
(6, 'How do you write \'Hello World\' in alert box?', 'msgBox(\'Hello World\');', 'msg(\'Hello World\');', 'alertBox(\'Hello World\');', 'alert(\'Hello World\');', 6),
(7, 'How do you create a function in JavaScript?', 'function:myFunction()', 'function = myFunction()', 'function myFunction()', NULL, 7),
(8, 'How do you call a function named \'myFunction\'?', 'myFunction()', 'call function myFunction()', 'call myFunction()', NULL, 8),
(9, 'How to write an IF statement in JavaScript?', 'if i == 5 then', 'if (i == 5)', 'if i = 5 then', 'if i = 5', 9),
(10, 'How to write an IF statement for executing some code if \'i\' is NOT equal 5?', 'if (i &lt;&gt; 5)', 'if i =! 5 then', 'if (i != 5)', 'if i &lt;&gt; 5', 10),
(11, 'How does a WHILE loop start?', 'while (i &lt;= 10)', 'while (i &lt;= 10; i++)', 'while i = 1 to 10', NULL, 11),
(12, 'How does a FOR loop start?', 'for i = 1 to 5', 'for (i = 0; i &lt;= 5)', 'for (i &lt;= 5; i++)', 'for (i = 0; i &lt;= 5; i++)', 12),
(13, 'How can you add a comment in a JavaScript?', '// This is a comment', '&lt;!-- This is a comment --&gt;', '\'THis is a comment', NULL, 13),
(14, 'How to insert a comment that has more than one line?', '// This comment has more than one line //', '&lt;!-- This comment has more than one line --&gt;', '/* This comment has more than one line */', NULL, 14),
(15, 'What is the correct way to write a JavaScript array?', 'var colors = [\'red\', \'green\', \'blue\']', 'var colors = (1:\'red\', 2:\'green\', 3:\'blue\')', 'var colors = \'red\', \'green\', \'blue\'', 'var colors = 1 = (\'red\'), 2 = (\'green\'), 3 = (\'blue\')', 15),
(16, 'How do you round the number 7.25, to the nearest integer?', 'Math.rnd(7.25)', 'round(7.25)', 'Math.round(7.25)', 'rnd(7.25)', 16),
(17, 'How do you find the number with the highest value of x and y?', 'Math.max(x, y)', 'top(x, y)', 'ceil(x, y)', 'Math.ceil(x, y)', 17),
(18, 'What is the correct JavaScript syntax for opening a new window called \'w2\'?', 'w2 = window.open(\'http://www.google.com\');', 'w2 = window.new(\'http://www.google.com\');', NULL, NULL, 18),
(19, 'JavaScript is the same as Java', 'True', 'False', NULL, NULL, 19),
(20, 'How can you detect the client\'s browser name?', 'client.navName', 'navigator.appName', 'browser.name', NULL, 20),
(21, 'Which event occurs when the user clicks on an HTML element?', 'onclick', 'onmouseclick', 'onchange', 'onmouseover', 21),
(22, 'How do you declare a JavaScript variable?', 'var carName;', 'v carName;', 'variable carName;', NULL, 22),
(23, 'Which operator is used to assign a value to a variable?', 'x', '-', '*', '=', 23),
(24, 'What will the following code return: Boolean(10 > 9)', 'NaN', 'True', 'False', NULL, 24),
(25, 'Is JavaScript case-sensitive?', 'Yes', 'No', NULL, NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions_mysql`
--

CREATE TABLE `quiz_questions_mysql` (
  `id` smallint UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(100) NOT NULL,
  `answer2` varchar(100) NOT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `correct_answer_id` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_questions_mysql`
--

INSERT INTO `quiz_questions_mysql` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer_id`) VALUES
(1, 'What does SQL stand for?', 'Structured Query Language', 'Strong Question Language', 'Structured Question Language', NULL, 1),
(2, 'Which SQL statement is used to extract data from a database?', 'EXTRACT', 'GET', 'OPEN', 'SELECT', 2),
(3, 'Which SQL statement is used to update data in a database?', 'SAVE AS', 'UPDATE', 'MODIFY', 'SAVE', 3),
(4, 'Which SQL statement is used to delete data from a database?', 'COLLAPSE', 'DELETE', 'REMOVE', NULL, 4),
(5, 'Which SQL statement is used to insert new data in a database', 'ADD RECORD', 'INSERT NEW', 'ADD NEW', 'INSERT INTO', 5),
(6, 'With SQL, how do you select a column named \"FirstName\" from a table named \"Persons\"?', 'SELECT FirstName FROM Persons', 'SELECT Persons.FirstName', 'EXTRACT FirstName FROM Persons', NULL, 6),
(7, 'With SQL, how do you select all the columns from a table named \"Persons\"?', 'SELECT *.Persons', 'SELECT [all] FROM Persons', 'SELECT * FROM Persons', 'SELECT Persons', 7),
(8, 'With SQL, how do you select all the records from a table named \"Persons\" where the value of the column \"FirstName\" is \"Peter\"?', 'SELECT * FROM Persons WHERE FirstName &lt;&gt;\'Peter\'', 'SELECT [all] FROM Persons WHERE FirstName LIKE \'Peter\'', 'SELECT [all] FROM Persons WHERE FirstName = \'Peter\'', 'SELECT * FROM Persons WHERE FirstName = \'Peter\'', 8),
(9, 'With SQL, how do you select all the records from a table named \"Persons\" where the value of the column \"FirstName\" starts with an \"a\"?', 'SELECT * FROM Persons WHERE FirstName = \'%a%\'', 'SELECT * FROM Persons WHERE FirstName LIKE \'a%\'', 'SELECT * FROM Persons WHERE FirstName = \'a\'', 'SELECT * FROM Persons WHERE FirstName LIKE \'%a\'', 9),
(10, 'The OR operator displays a record if ANY conditions listed are true. The AND operator dispays a record if ALL of the conditions listed are true', 'True', 'False', NULL, NULL, 10),
(11, 'With SQL, how do you select all the records from a table named \"Persons\" where the \"FirstName\" is \"Peter\" and the \"LastName\" is \"Jackson\"?', 'SELECT FirstName = \'Peter\', LastName = \'Jackson\' FROM Persons', 'SELECT * FROM Persons WHERE FirstName <> \'Peter\' AND LastName &lt;&gt; \'Jackson\'', 'SELECT * FROM Persons WHERE FirstName = \'Peter\' AND LastName = \'Jackson\'', NULL, 11),
(12, 'With SQL, how do you select all the records from a table named \"Persons\" where the \"LastName\" is alphabetically between (and including) \"Hansen\" AND \"Pettersen\"?', 'SELECT * FROM Persons WHERE LastName BETWEEN \'Hansen\' AND \'Pettersen\'', 'SELECT * FROM Persons WHERE LastName &gt; \'Hansen\' AND LastName &lt; \'Pettersen\'', 'SELECT LastName &gt; \'Hansen\' AND LastName &lt; \'Pettersen\' FROM Persons', NULL, 12),
(13, 'Which SQL statement is used to return only different values?', 'SELECT UNIQUE', 'SELECT DIFFERENT', 'SELECT DISTINCT', NULL, 13),
(14, 'Which SQL statement is used to sort the result-set?', 'SORT', 'ORDER BY', 'ORDER', 'SORT BY', 14),
(15, 'Witch SQL, how can you return all the records from a table named \"Persons\" sorted descending by \"FirstName\"?', 'SELECT * FROM Persons SORT BY \'FirstName\' DESC', 'SELECT * FROM Persons ORDER FirstName DESC', 'SELECT * FROM Persons ORDER BY FirstName DESC', 'SELECT * FROM Persons SORT \'FirstName\' DESC', 15),
(16, 'With SQL, how can you insert a new record into the \"Persons\" table?', 'INSERT INTO Persons VALUES (\'Jimmy\', \'Jackson\')', 'INSERT VALUES (\'Jimmy\', \'Jackson\') INTO Persons', 'INSERT (\'Jimmy\', \'Jackson\') INTO Persons', NULL, 16),
(17, 'With SQL, how can you insert \"Olsen\" as the \"LastName\" in the \"Persons\" table?', 'INSERT (\'Olsen\') INTO Persons (LastName)', 'INSERT INTO Persons (\'Olsen\') INTO LastName', 'INSERT INTO Persons (LastName) VALUES (\'Olsen\')', NULL, 17),
(18, 'How can you change \"Hansen\" into \"Nilsen\" in the \"LastName\" column in the Persons table?', 'UPDATE Persons SET LastName = \'Hansen\' INTO LastName = \'Nilsen\'', 'UPDATE Persons SET LastName = \'Nilsen\' WHERE LastName = \'Hansen\'', 'MODIFY Persons SET LastName = \'Nilsen\' WHERE LastName =\'Hansen\'', 'MODIFY Persons SET LastName = \'Hansen\' INTO LastName = \'Nilsen\'', 18),
(19, 'With SQL, how can you delete the records where the \"FirstName\" is \"Peter\" in the Persons Table?', 'DELETE FROM Persons WHERE FirstName = \'Peter\'', 'DELETE FirstName = \'Peter\' FROM Persons', 'DELETE ROW FirstName = \'Peter\' FROM Persons', NULL, 19),
(20, 'With SQL, how can you return the number of records in the \"Persons\" table?', 'SELECT COUNT(*) FROM Persons', 'SELECT LEN(*) FROM Persons', 'SELECT COLUMNS(*) FROM Persons', 'SELECT NO(*) FROM Persons', 20),
(21, 'What is the most common type of join?', 'JOINED', 'INNER JOIN', 'INSIDE JOIN', 'JOINED TABLE', 21),
(22, 'Which operator is used to select values within a range?', 'BETWEEN', 'WITHIN', 'RANGE', NULL, 22),
(23, 'The NOT NULL constraint enforces a column to not accept NULL values.', 'True', 'False', NULL, NULL, 23),
(24, 'Which operator is used to search for a specified pattern in a column', 'LIKE', 'FROM', 'GET', NULL, 24),
(25, 'Which SQL statement is used to create a database table called \'Customers\'?', 'CREATE DATABASE TABLE Customers', 'CREATE DATABASE TAB Customers', 'CREATE TABLE Customers', 'CREATE DB Customers', 25);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions_nodejs`
--

CREATE TABLE `quiz_questions_nodejs` (
  `id` smallint UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(100) NOT NULL,
  `answer2` varchar(100) NOT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `correct_answer_id` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_questions_nodejs`
--

INSERT INTO `quiz_questions_nodejs` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer_id`) VALUES
(1, 'Which of the following commands starts a REPL session?', '$ node', '$ node start', '$ node repl', '$ node console', 1),
(2, 'Which of the following commands will show all the modules installed localy.', '$ npm ls -g', '$ npm ls', '$ node ls -g', '$ node ls', 2),
(3, 'Which of the following is true about readable stream?', 'Readable stream is used for read operation', 'Output of readable stream can be input to a writtable stream', 'Both of the above', 'None of the above', 3),
(4, 'Which method of fs module is used to write a file?', 'fs.write(path, flags[, mode], callback)', 'fs.writeFile(path, flags[, mode], callback)', 'fs.writePath(path, flags[, mode], callback)', 'None of the about', 4),
(5, 'Which method of fs module is used to read a directory?', 'fs.readDirectory(path[, mode], callback)', 'fs.read(path[, mode], callback)', 'fs.readdir(path, callback)', 'None of the above', 5),
(6, 'Which of the following is true about process global object?', 'The process object is an instance of EventEmitter', 'proccess emits exit event when process is about to exit', 'process emits uncaughtException when an exception bubbles all the way back to the event loop', 'All of the above', 6),
(7, 'Which of the following API creates a server?', 'net.createServer([options][, connectionListener])', 'net.connect(options[, connectionListener])', 'net.createConnection(port[, host][, connectListener])', 'None of the above', 7),
(8, 'net.isIP(input) tests of input is an IP address or not.', 'TRUE', 'FALSE', NULL, NULL, 8),
(9, 'Which of the following module is required to create a web server?', 'url module', 'net module', 'http module', 'web module', 9),
(10, 'Transform stream is a type of duplex stream.', 'TRUE', 'FALSE', NULL, NULL, 10),
(11, 'Node.js runs on...', 'Client', 'Server', 'Both, server and client', 'None of the above', 11),
(12, 'Node.js is by default...', 'Synchronous', 'Multi-threaded', 'Asynchronous', 'None of the above', 12),
(13, 'Node.js supports which of the following platform?', 'Winodws', 'Macintosh', 'Unix/Linux', 'All of the above', 13),
(14, 'Node.js terminal (REPL) is used for...', 'testing node.js/JavaScript expressions', 'executing browser\'s JavaScript expressions', 'the preview of node.js application', 'None of the above', 14),
(15, 'What is the default scope in Node.js application?', 'Global', 'Local', 'Global Function', 'Local to object', 15),
(16, 'Node.js application runs on...', 'Multiple threads', 'Single thread', 'Multiple Processes', 'Single Process', 16),
(17, 'Simple or complex functionality organized in a single or multiple JavaScript files which can be reused through your Node.js application is called...', 'Module', 'Library', 'Package', 'Function', 17),
(18, 'The Node.js modules can be exposed using...', 'module.expose', 'module', 'module.exports', 'All of the above', 18),
(19, 'Third-party packages can be install/update/delete using...', 'Node Package Manager', 'Node.exe', 'Module.exports', 'REPL', 19),
(20, 'Which of the following core module is used to create a web server in Node.js?', 'fs', 'url', 'connect', 'http', 20),
(21, 'How to import module in Node.js?', 'Using require() function', 'Using module.import', 'Using include() function', 'Using app.use() function', 21),
(22, 'Which of the following is a GUI-based debugging tool for Node.js?', 'Core node debugger', 'Console', 'REPL', 'Node Inspector', 22),
(23, 'Which of the following class is used to create and consume custom events in Node.js?', 'EventEmitter', 'Events', 'NodeEvent', 'None of the above', 23),
(24, 'Which of the following are web application frameworks for Node.js', 'Express.js', 'Geddy', 'Locomotive', 'All of the above', 24),
(25, 'Which of the following types of application can be built using Node.js?', 'Web Application', 'Chat Application', 'RESTful Service', 'All of the above', 25);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions_php`
--

CREATE TABLE `quiz_questions_php` (
  `id` smallint UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(100) NOT NULL,
  `answer2` varchar(100) NOT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `correct_answer_id` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_questions_php`
--

INSERT INTO `quiz_questions_php` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer_id`) VALUES
(1, 'What does PHP stand for?', 'PHP: Hypertext Preprocessor', 'Personal Hypertext Processor', 'Private Home Page', NULL, 1),
(2, 'PHP server scripts are surrounded by delimiters, which?', '&lt;&&gt;...&lt;/&&gt;', '&lt;?php&gt;...&lt;/?&gt;', '&lt;script&gt;...&lt;/script&gt;', '&lt;?php...?&gt;', 2),
(3, 'How do you write \"Hello World\" in PHP', 'echo \'Hello World\';', '\'Hello World\'', 'Document.write(\'Hello World\');', NULL, 3),
(4, 'All variables in PHP start with which symbol?', '$', '&', '!', NULL, 4),
(5, 'What is the correct way to end a PHP statement?', ';', 'New line', '&lt;/php&gt;', '.', 5),
(6, 'The PHP syntax is most similar to:', 'JavaScript', 'VBScript', 'Perl and C', NULL, 6),
(7, 'How do you get information from a form that is submitted using the \"get\" method?', '$_GET[];', 'Request.QueryString;', 'Request.Form;', NULL, 7),
(8, 'When using the POST method, variables are displayed in the URL:', 'True', 'False', NULL, NULL, 8),
(9, 'In PHP you can use both single quoted (\'\') and double quoted (\"\") for strings:', 'False', 'True', NULL, NULL, 9),
(10, 'Include files must have the file extension \".inc\"', 'False', 'True', NULL, NULL, 10),
(11, 'What is the correct way to include the file \'time.inc\'?', '&lt;?php include:\'time.inc\'; ?&gt;', '&lt;!-- include file=\'time.inc\' --&gt;', '&lt;?php include file=\'time.inc\'; ?&gt;', '&lt;?php include \'time.inc\'; ?&gt;', 11),
(12, 'What is the correct way to create a function in PHP?', 'new_function myFunction()', 'function myFunction()', 'create myFunction()', NULL, 12),
(13, 'What is the correct way to open the file \'time.txt\' as readable?', 'fopen(\'time.txt\', \'r+\');', 'fopen(\'time.txt\', \'r\');', 'open(\'time.txt\');', 'open(\'time.txt\', \'read\');', 13),
(14, 'PHP allows you to send emails directly from a script', 'True', 'False', NULL, NULL, 14),
(15, 'Which superglobal variable holds information about headers, paths, and script locations?', '$_SESSION', '$GLOBALS', '$_SERVER', '$_GET', 15),
(16, 'What is the correct way to add 1 to the $count variable?', '$count++;', 'count++;', '$count =+1', '++count', 16),
(17, 'What is a correct way to add a comment in PHP?', '&lt;!--...--&gt;', '/*...*/', '*...*', '&lt;comment&gt;...&lt;/comment&gt;', 17),
(18, 'PHP can be run on Microsoft Windows IIS(Internet Information Server):', 'True', 'False', NULL, NULL, 18),
(19, 'The die() and exit() functions do the same thing.', 'False', 'True', NULL, NULL, 19),
(20, 'Which one of these variables has an illegal name?', '$myVar', '$my-Var', '$my_Var', NULL, 20),
(21, 'How do you create a cookie in PHP?', 'createcookie', 'setcookie()', 'makecookie()', NULL, 21),
(22, 'In PHP, the only way to output text is with echo.', 'True', 'False', NULL, NULL, 22),
(23, 'How do you create an array in PHP?', '$cars = array(\'Volvo\', \'BMV\', \'Toyota\');', '$cars = array[\'Volvo\', \'BMW\', \'Toyota\']', '$cars = \'Volvo\', \'BMW\', \'Toyota\';', NULL, 23),
(24, 'The if statement is used to execute some code only if a specified condition is true', 'True', 'False', NULL, NULL, 24),
(25, 'Which operator is used to check if two values are equal and of same data type?', '!=', '=', '===', '==', 25);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions_python`
--

CREATE TABLE `quiz_questions_python` (
  `id` smallint UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(100) NOT NULL,
  `answer2` varchar(100) NOT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `correct_answer_id` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_questions_python`
--

INSERT INTO `quiz_questions_python` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer_id`) VALUES
(1, 'What is the correct syntax to output \'Hello World\' in Python?', 'p(\'Hello World\')', 'echo \'Hello World\'', 'print(\'Hello World\')', 'echo(\'Hello World\')', 1),
(2, 'How do you insert COMMENTS in Python code?', '# This is a comment', '/* THis is a comment */', '// This is a comment', NULL, 2),
(3, 'Which one is NOT a legal variable name?', '_myvar', 'my-var', 'Myvar', 'my_var', 3),
(4, 'How do you create a variable with the numeric value 5?', 'x = int(5)', 'x = 5', 'Both the other answers are correct', NULL, 4),
(5, 'What is the correct file extension for Python files?', '.pyth', '.pyt', '.pt', '.py', 5),
(6, 'How do you create a variable with the floating number 2.8?', 'x = 2.8', 'Both the other answers are correct', 'x = float(2.8)', NULL, 6),
(7, 'What is the correct syntax to output the type of a variable or object in Python?', 'print(typeOf(x))', 'print(typeof x)', 'print(type(x))', 'print(typeof(x))', 7),
(8, 'What is the correct way to create a function in Python?', 'create myFunction();', 'function myFunction();', 'def myFunction();', NULL, 8),
(9, 'In Python \'Hello\' is the same as \"Hello\"', 'True', 'False', NULL, NULL, 9),
(10, 'What is the correct syntax to return the first character in a string?', 'x = sub(\'Hello\', 0, 1)', 'x = \'Hello\'[0]', 'x = \'Hello\'.sub(0, 1)', NULL, 10),
(11, 'Which method can be used to remove any whitespace from both the beginning and the end of a string?', 'strip()', 'trim()', 'len()', 'ptrim()', 11),
(12, 'Which method can be used to return a string in upper case letters?', 'upperCase()', 'upper()', 'uppercase()', 'toUpperCase()', 12),
(13, 'Which method can be used to replace parts of a string?', 'replaceString()', 'repl()', 'replace()', 'switch()', 13),
(14, 'Which operator is used to multiply numbers?', '#', '%', '*', 'x', 14),
(15, 'Which operator can be used to compare two values?', '=', '==', '&gt;&lt;', '&lt;&gt;', 15),
(16, 'Which of these collections defines a LIST?', '{\'name\': \'apple\', \'color\': \'green\'}', '[\'apple\', \'banana\', \'cherry\']', '(\'apple\', \'banana\', \'cherry\')', '{\'apple\', \'banana\', \'cherry\'}', 16),
(17, 'Which of these collections defines a TUPLE?', '{\'name\': \'apple\', \'color\': \'green\'}', '[\'apple\', \'banana\', \'cherry\']', '(\'apple\', \'banana\', \'cherry\')', '{\'apple\', \'banana\', \'cherry\'}', 17),
(18, 'Which of these collections defines a SET?', '{\'name\': \'apple\', \'color\': \'green\'}', '[\'apple\', \'banana\', \'cherry\']', '(\'apple\', \'banana\', \'cherry\')', '{\'apple\', \'banana\', \'cherry\'}', 18),
(19, 'Which of these collections defines a DICTIONARY?', '{\'name\': \'apple\', \'color\': \'green\'}', '[\'apple\', \'banana\', \'cherry\']', '(\'apple\', \'banana\', \'cherry\')', '{\'apple\', \'banana\', \'cherry\'}', 19),
(20, 'Which collection is ordered, changeable, and allows duplicate members?', 'SET', 'LIST', 'TUPLE', 'DICTIONARY', 20),
(21, 'Which collection does not allow duplicate members?', 'SET', 'LIST', 'TUPLE', NULL, 21),
(22, 'How do you start writing an if statement in Python?', 'if x &gt; y then:', 'if (x &gt; y)', 'if x &gt; y:', NULL, 22),
(23, 'How do you start writing a while loop in Python?', 'while x &gt; y {', 'x &gt; y while {', 'while (x &gt; y)', 'while x &gt; y:', 23),
(24, 'How do you start writing a for loop in Python?', 'for x in y:', 'for x &gt; y:', 'for each x in y:', NULL, 24),
(25, 'Which statement is used to stop a loop?', 'return', 'exit', 'stop', 'break', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz_answers_java`
--
ALTER TABLE `quiz_answers_java`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answers_javascript`
--
ALTER TABLE `quiz_answers_javascript`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answers_mysql`
--
ALTER TABLE `quiz_answers_mysql`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answers_nodejs`
--
ALTER TABLE `quiz_answers_nodejs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answers_php`
--
ALTER TABLE `quiz_answers_php`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answers_python`
--
ALTER TABLE `quiz_answers_python`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_category`
--
ALTER TABLE `quiz_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions_java`
--
ALTER TABLE `quiz_questions_java`
  ADD PRIMARY KEY (`id`),
  ADD KEY `java_foreign_key` (`correct_answer_id`);

--
-- Indexes for table `quiz_questions_javascript`
--
ALTER TABLE `quiz_questions_javascript`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions_mysql`
--
ALTER TABLE `quiz_questions_mysql`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions_nodejs`
--
ALTER TABLE `quiz_questions_nodejs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions_php`
--
ALTER TABLE `quiz_questions_php`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions_python`
--
ALTER TABLE `quiz_questions_python`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz_answers_java`
--
ALTER TABLE `quiz_answers_java`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_answers_javascript`
--
ALTER TABLE `quiz_answers_javascript`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_answers_mysql`
--
ALTER TABLE `quiz_answers_mysql`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_answers_nodejs`
--
ALTER TABLE `quiz_answers_nodejs`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_answers_php`
--
ALTER TABLE `quiz_answers_php`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_answers_python`
--
ALTER TABLE `quiz_answers_python`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_category`
--
ALTER TABLE `quiz_category`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz_questions_java`
--
ALTER TABLE `quiz_questions_java`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `quiz_questions_javascript`
--
ALTER TABLE `quiz_questions_javascript`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_questions_mysql`
--
ALTER TABLE `quiz_questions_mysql`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_questions_nodejs`
--
ALTER TABLE `quiz_questions_nodejs`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_questions_php`
--
ALTER TABLE `quiz_questions_php`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quiz_questions_python`
--
ALTER TABLE `quiz_questions_python`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quiz_questions_java`
--
ALTER TABLE quiz_questions_java
ADD CONSTRAINT foreign_key_java_questions FOREIGN KEY(correct_answer_id) REFERENCES quiz_answers_java(id) ON DELETE CASCADE;

--
-- Constraints for table `quiz_questions_javascript`
--
ALTER TABLE quiz_questions_javascript
ADD CONSTRAINT foreign_key_javascript_questions FOREIGN KEY(correct_answer_id) REFERENCES quiz_answers_javascript(id) ON DELETE CASCADE;

--
-- Constraints for table `quiz_questions_mysql`
--
ALTER TABLE quiz_questions_mysql
ADD CONSTRAINT foreign_key_mysql_questions FOREIGN KEY(correct_answer_id) REFERENCES quiz_answers_mysql(id) ON DELETE CASCADE;

--
-- Constraints for table `quiz_questions_nodejs`
--
ALTER TABLE quiz_questions_nodejs
ADD CONSTRAINT foreign_key_nodejs_questions FOREIGN KEY(correct_answer_id) REFERENCES quiz_answers_nodejs(id) ON DELETE CASCADE;

--
-- Constraints for table `quiz_questions_php`
--
ALTER TABLE quiz_questions_php
ADD CONSTRAINT foreign_key_php_questions FOREIGN KEY(correct_answer_id) REFERENCES quiz_answers_php(id) ON DELETE CASCADE;

--
-- Constraints for table `quiz_questions_python`
--
ALTER TABLE quiz_questions_python
ADD CONSTRAINT foreign_key_python_questions FOREIGN KEY(correct_answer_id) REFERENCES quiz_answers_python(id) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
