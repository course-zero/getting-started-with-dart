import 'package:meta/meta.dart';

/**
 * `@immutable` annotation from `meta` package forces a class to become immutable.
 * 
 * A class is `immutable` if all of the instance fields of the class,
 * whether defined directly or inherited, are `final`.
 * 
 * If a sub-class inherits a super-class which is marked `@immutable`,
 * then sub-class is becomes immutable. Hence, any classes inherits from the sub-class
 * are also immutable. Therefore, all instance variables on these classes should be `final`.
 */
@immutable
class User{
  final String name;
  
  // an immutable class must use initializer (shorthand) syntax for the constructor
  User( this.name );

  // constructor can have optional body, but instance variables can not be reassigned
  User.withLog( this.name ) {
    print( 'User created with name: ${ this.name }' );
  }

}

// execute program
void main() {

  // create a `User` object
  var u = User.withLog( 'John Doe' );
  
  // override name property
  //u.name = 'Mike'; // not allowed because `User` is `immutable`.
  
  // print name property
  print( u.name );
}