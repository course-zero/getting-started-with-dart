/**
 * A named constructor should is defined with `Class.constructorName`
 * instance method.
 */
void main() {

  // create `ross` object
  Person ross = Person.initWithUpperCase( 'Ross', 'Geller' );
  print( "Full name: ${ ross.getFullName() }" );
}

// simple Persona class with constructor
class Person {
  String firstName, lastName; // instance variables with `null` value
  int age; // instance variable with `null` value

  // default constructor function
  Person( this.firstName, this.lastName, [ this.age = 18 ] );

  // named constructor: initWithUpperCase
  Person.initWithUpperCase( String firstName, String lastName, [ int age = 18 ] ) {
    this.firstName = firstName.toUpperCase();
    this.lastName = lastName.toUpperCase();;
    this.age = age;
  }

  // instance methods
  String getFullName() {
    return this.firstName + " " + this.lastName; // `this` points to the object itself
  }
}