/**
 * A constructor function of the class is implicitly called by the Dart when an object is created from it.
 * The default constructor method has the same name as the class.
 * 
 * A constructor function is generally used to initialize instance variables,
 * with values passed by the user while creating an object. 
 */
void main() {

  // create `ross` object
  Person ross = new Person( 'Ross', 'Geller' );
  print( "Full name: ${ ross.getFullName() }" );
  print( "Age: ${ ross.age }" );
}

// simple Persona class with constructor
class Person {
  
  // instance variables with `null` value
  String firstName, lastName;
  
  // instance variable with `null` value
  int age;

  // constructor function
  Person( String firstName, String lastName, [ int age = 18 ] ) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
  }

  // instance methods
  String getFullName() {
    return this.firstName + " " + this.lastName; // `this` points to the object itself
  }
}
