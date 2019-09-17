void main() {
  // create Employee object
  var e = Employee( 'Ross', 'Geller', 1000 );
  print( 'Employee e : ${ e.firstName } ${ e.lastName }, salary: ${ e.salary }' );

  // create Student object
  var s = Student( 'Rachel', 'Green', 418 );
  print( 'Student s : ${ s.firstName } ${ s.lastName }, salary: ${ s.score }%' );

  // create Person object
  var p = Person( 'Joey', 'Tribbiani' );
  print( 'Person p : ${ p.firstName } ${ p.lastName }' );

}

// Person class with basic details
class Person {
  String firstName, lastName;

  // default constructor
  Person( this.firstName, this.lastName );

  // named constructor
  Person.withUpperCase( String firstName, String lastName ) {
    this.firstName = firstName.toUpperCase();
    this.lastName = lastName.toUpperCase();
  }
}

// Employee class shares feature of Person class
class Employee extends Person {
  int salary;

  // default constructor (sorthand syntax) calls default constructor of Person class using `super` function
  // constructor of the Person is executed first and then the constructor of the Employee class
  // arguments of the constructor are available in `super` call
  Employee( String firstName, String lastName, this.salary ): super( firstName, lastName );
}

// Student class shares feature of Person class
class Student extends Person {
  num score;

  // default constructor, calls `Person.withUpperCase` constuctor of Person class
  Student( String firstName, String lastName, num marks ): super.withUpperCase( firstName, lastName ) {
    this.score = num.parse( ( (marks / 500) * 100 ).toStringAsFixed( 6 ) ); // limit decimal places to 2
  }
}