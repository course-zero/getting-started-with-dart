/**
 * A class is created using `class` keyword.
 */
void main() {

  // create `ross` object
  Person ross = new Person();
  ross.firstName = 'Ross';
  ross.lastName = 'Geller';

  print( "Full name: ${ ross.getFullName() }" );
  print( "ross object: $ross" );
}

// simple Persona class
class Person {
  static String company = 'AWESOME LLC.'; // static variables are accessed on the class
  String firstName, lastName; // instance variables with `null` value
  var age = 18; // instance variable with initial `18` value

  // instance methods
  String getFullName() {
    return this.firstName + " " + this.lastName; // `this` points to the object itself
  }

  // instance method to print string representation of the object
  @override
  String toString() {
    return "Name: ${ this.getFullName() }, Age: ${ this.age }, Company: ${ Person.company }";
  }
}