/**
 * A constructor is an instance method that is invoked
 * when an object is created from the class.
 */
void main() {

  // create `ross` object
  Person ross = new Person( 'Ross', 'Geller' );
  print( "Full name: ${ ross.getFullName() }" );
  print( "Age: ${ ross.age }" );
}

// simple Persona class with constructor
class Person {
  String firstName, lastName; // instance variables with `null` value
  int age; // instance variable with `null` value

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