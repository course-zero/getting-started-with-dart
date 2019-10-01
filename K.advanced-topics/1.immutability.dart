import 'package:meta/meta.dart';

/**
 * `@immutable` annotation from `meta` package forces a class to become immutable.
 * 
 * A class is `immutable` if all of the instance fields of the class,
 * whether defined directly or inherited, are `final`.
 */
@immutable
class User{
  final String name;
  
  User( this.name );
}

// execute program
void main() {

  // create a `User` object
  var u = User( 'John' );
  
  // override name property
  //u.name = 'Mike'; // not allowed because `User` is `immutable`.
  
  // print name property
  print( u.name );
}