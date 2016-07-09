<!DOCTYPE html>
<html>
 <head>
 </head>
 <body>
    <p>
	<?php
	
		//Just created this document based on the php course available on code academy platform: https://www.codecademy.com/learn/php

		//JavaScript generally runs in the browser, or client. This means it only really knows what's going on in your browser, plus whatever information it gets from the website(s) you're connecting to.
		//PHP, on the other hand, runs on the same computer as the website you're visiting, which is known as the server. This means that it has access to all the information and files on that machine, which allows it to construct custom HTML pages to send to your browser, handle cookies, and run tasks or perform calculations with data from that website.
		
		//write
		echo "First line of PHP!"
		
		//concatenation
		echo "Bottoni," . " " . "Thiago";
		
		//variables
		$myName = "Thiago";
		echo $myName;
		
		//Comparisons
		//List of comparison operators:
		// > Greater than
		// < Less than
		// <= Less than or equal to
		// >= Greater than or equal to
		// == Equal to
		// != Not equal to
		
		//IF statements
		//IF
		$items = 10;
		
		if($items < 20) {
			echo "You get a 10% discount!";
		}
		
		//IF / ELSE
		if($items > 15) {
		  echo "You get a 10% discount!";
		}
		else {
			echo "You get a 5% discount!";
		}
		
		//IF / ELSEIF / ELSE
		if($items > 15) {
		  echo "You get a 10% discount!";
		}
		elseif ($items == 14) {
			echo "You get a 8% discount!";
		}
		else {
			echo "You get a 8% discount!";
		}
		
		//SWITCH
		$myNum = 2;

		switch ($myNum) {
			case 1:
				echo "1";
				break;
			case 2:
				echo "2";
				break;
			case 3:
				echo "3";
				break;
			default:
				echo "None of the above";
		}
		
		//Array
		//Each item in an array is numbered starting from 0.
		$array = array("Egg", "Tomato", "Beans");
		$tens = array(10, 20, 30, 40, 50);
		
		echo $array[0];
		
		//Modifying array elements
		$myArray = array("red", "blue", "yellow");
		
		//Outputs "blue":
		echo $myArray[1];
		
		//Modifying:
		$myArray[1] = "green";
		
		//Outputs "green":
		echo $myArray[1];
		
		//Deleting Array Elements
		//To remove an element:
		unset($myArray[2]);
		
		//To remove the whole array:
		unset($myArray);
		
		//Associative array
		$myAssocArray = array('year' => 2012, 
						'colour' => 'blue',
						'doors' => 5,
						'make' => 'BMW');
		
		//Acessing an associative array
		echo $myAssocArray['make']; //Outputs 'BMW'
		
		//FOR loops
		for ($i = 0; $i < 10; $i++) {
			echo $i;
		}
		
		//ForEach
		//The foreach loop is used to iterate over each element of an object—which makes it perfect for use with arrays!
		//You can think of foreach as jumping from element to element in the array and running the code between {}s for each of those elements.
		//O código é executado toda vez que encontrar o elemento no array
		$langs = array("JavaScript", "HTML/CSS", "PHP", "Python", "Ruby");
		
		//Between the parentheses, we use the $langs as $lang) syntax to tell PHP: "For each thing in $langs, assign that thing temporarily to the variable $lang."
		foreach ($langs as $lang) {
			echo "<li>$lang</li>";
		}
		unset($lang);
		
		//WHILE loops
		$loopCond = true;
		
		while ($loopCond){
			//Echo your message that the loop is running below
			echo "<p>The loop is running.</p>";
			$loopCond = false;
		}
		echo "<p>And now it's done.</p>";
		
		//DO-WHILE loops
		$i = 0;
		do {
			echo $i;
		} while ($i > 0);
		
		//Functions
		//Functions are reusable pieces of code that you can use throughout an application, saving you lots of copying and pasting. PHP has lots of built-in functions.
		
		//strlen() is one of the most common String functions in PHP. You pass it a string, or variable containing a string, and it returns the number of characters in that string.
		$length = strlen("Thiago");
		print $length;
		
		//Another very common string function is substr(). This function allows you to return a substring (piece of) of your string.
		$sub = substr("Thiago", 0, 1);
		
		//Two other very useful string functions are strtoupper() and strtolower(), which make your entire string UPPERCASE or lowercase.
		$upper = strtoupper("Thiago");
		$lower = strtolower("Thiago");
		
		//strpos() find the position of the first occurrence of a substring in a string.
		$position = "Thiago";
		print strpos($position, "T");
		
		//The most common Math function you'll use is round(). This function rounds floating point numbers (numbers with decimal points in them) up or down.
		//Round pi down from 3.1416...
		$round = round(M_PI);
		print $round;  // prints 3

		//This time, round pi to 4 places
		$round_decimal = round(M_PI, 4);
		print $round_decimal; // prints 3.1416
		
		//A very common and useful function is rand(). This function returns a random number between two numbers. Optionally, you can provide your min and max numbers as parameters.
		//Prints a number between 0 and 32767
		print rand();

		//Prints a number between 1 and 10
		print rand(1,10);
		
		//array_push() takes two arguments: an array, and an element to add to the end of that array.
		$fav_bands = array();
		array_push($fav_bands, "Maroon 5");
		array_push($fav_bands, "Bruno Mars");
		array_push($fav_bands, "Nickelback");
		
		//Passing an array to count() will return the number of elements in that array.
		print count($fav_bands);
		
		//sort and join
		$numbers = array(5, 3, 7, 1);
		sort($array);				
		print join(", ", $array); //Prints "1, 3, 5, 7"
		
		//rsort and join
		rsort($array);
		print join(":", $array); //Prints "7:5:3:1"
		
		//USER DEFINED FUNCTION
		function helloWorld() {
			echo "Hello world!";
		}
		
		//To call it
		helloWorld();
		
		//Using RETURN
		function squareValue($number) {
		  return $number * $number;
		} 
		
		//Calling it
		$result = squareValue(6);
		
		//OBJECTS IN PHP
		class Fruit {
		  public $count = 3;
		  public $type;
		}

		$apple = new Fruit(); //Creating a new instance of the Fruit object
		$apple->type = "apple"; //Setting the type to "apple"
		print $apple->count; //Printing the count attribute = 3
		print $apple->type;  //Printing the type attribute = apple
		
		//CONSTRUCTOR
		//The __construct function is a special one, which is called when a new object is created using a new keyword.
		class Person {
			public $isAlive = true;
			public $firstname;
			public $lastname;
			public $age;
			
			
			public function __construct($firstname, $lastname, $age) {
				$this->firstname = $firstname;
				$this->lastname = $lastname;
				$this->age = $age;
			}
			
			//THIS IS A METHOD
			public function greet() {
				return "Hello, my name is " . $this->firstname . " " .
				$this->lastname . ". Nice to meet you! :-)";
			}
			
		}
		
		//By creating a new instance using the new keyword, you actually call the __construct() method, which constructs the object. And that's why we have to pass in some arguments when we create an instance of a class, since this is how the properties get set!
		$teacher = new Person("boring", "12345", 12345);        
		$student = new Person("Thiago", "Bottoni", 25);
		
		//To call a parameter
		echo $student->age;
		
		//To call a method
		echo $student->greet();
		echo $teacher->greet();
		
		//INHERITANCE
		class Shape {
		  public $hasSides = true; //If you use "final public", you prevent that the subclass override the method.
		}
		
		class Square extends Shape {
		
		}
		
		//property_exists()
		$square = new Square();
		if (property_exists($square, "hasSides")) {
		  echo "I have sides!";
		}
		
		//CONSTANTS
		//Sometimes we want variables that don't change. These are prefixed with the const keyword (short for constant).
		class Person {

		}
		class Ninja extends Person {
			const stealth = "MAXIMUM";
		}
	  
		echo Ninja::stealth; //Access to the constant stealth
		
		//STATIC
		//The static keyword lets you use a class' property or method without having to create an instance of that class.
		class King {
		  public static function proclaim() { // <<-- STATIC
			echo "A kingly proclamation!";
		  }
		}
		King::proclaim(); // <<-- Calling a static method without having to create an instance.
		
	?>
   </p>   
 </body>
</html>
