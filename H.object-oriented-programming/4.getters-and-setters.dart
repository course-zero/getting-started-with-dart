/**
 * A getter function is called when it is accessed like an instance variable on the object.
 * A setter function is called when a value is assigned to object with the same variable name.
 *
 * We use `get` keyword to define a `getter` function.
 * Getter function does not take any arguments and returns a value.
 * Hence getter function does not have parentheses. They can also be fat-arrow functions for simplicity.
 * -> String get funcName { return_statement; }
 * -> String get funcName => return_statement;
 *
 * We use `set` keyword to define a `setter` function.
 * A setter function takes one arguments which is the value user is trying to set and returns no value (void).
 * -> void set funcName () { statements; }
 * -> void set funcName => statement;
 */
void main() {

  var ross = Person( "Ross Geller Jr." );
  print( ross.fullName );

  // change name
  ross.fullName = "Chandler M. Bing";
  print( ross.fullName );
}

class Person {
  
   // _ (underscore) prefix makes variables private to the library
  String _firstName, _lastName;
  
  // default constructor
  Person( String name ) {
    var nameParts = name.split(" "); // split name by a space
    this._firstName = nameParts[ 0 ];
    this._lastName = nameParts[ 1 ];
  }

  // getter function for `fullName` property
  String get fullName {
    return "${ this._firstName } ${ this._lastName }";
  }

  // setter function for `fullName` property
  void set fullName( String name ) {
    var nameParts = name.split(" "); // split name by a space
    this._firstName = nameParts[ 0 ];
    this._lastName = nameParts[ 1 ];
  }
}
