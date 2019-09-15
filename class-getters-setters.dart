void main() {

  var ross = Person( "Ross Geller Jr." );
  print( ross.fullName );
}

class Person {
  String _firstName, _lastName; // _ prefix to state private variables

  Person( String name ) {
    var nameParts = name.split(" "); // split name by a space
    this._firstName = nameParts[ 0 ];
    this._lastName = nameParts[ 1 ];
  }

  // getter for fullName property
  get fullName => "${ this._firstName } ${ this._lastName }";
}