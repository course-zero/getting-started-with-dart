void main() {

  var ross = Person( "Ross Geller Jr." );
  print( ross.fullName );

  // change name
  ross.fullName = "Chandler M. Bing";
  print( ross.fullName );
}

class Person {
  String _firstName, _lastName; // _ prefix to state private variables

  Person( String name ) {
    var nameParts = name.split(" "); // split name by a space
    this._firstName = nameParts[ 0 ];
    this._lastName = nameParts[ 1 ];
  }

  // getter function for fullName property
  // defined like function without parantheses, as it takes no arguments
  String get fullName {
    return "${ this._firstName } ${ this._lastName }";
  }

  // setter function for fullName property
  void set fullName( String name ) {
    var nameParts = name.split(" "); // split name by a space
    this._firstName = nameParts[ 0 ];
    this._lastName = nameParts[ 1 ];
  }
}