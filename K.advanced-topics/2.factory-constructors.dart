import 'package:uuid/uuid.dart';

// unique identifier generator object
var uuidGenerator = Uuid();

/**
 * A `factory function` is a function that returns an instance of a class.
 * Dart provides `factory` keyword to label a default or named constructor.
 * Then it becomes our responsibility to return an instance from this constructor.
 * 
 * A factor constructor is generally used to control the instance creation.
 * For example, we can cache an instance of the class and return the same instance
 * when a user is trying to create new object.
 */
class Person {
  int id;
  String name;
  String uuid; // A random identifier to represent unique instance

  // `cache` map contains instances of the `Person` class labeled by `id` field
  // `final` protects `_cache` from being overridden accidentally
  static final Map<int, Person> _cache = {};

  // factory constructor does not have access to `this` object.
  factory Person( int id, String name ) {

    // if `_cache` does not have a value with `id` key,
    // then create a new instance of the `Person` class, store it in the `_cache` map
    if( ! _cache.containsKey( id ) ) {
      print( 'Creating new instance with id $id' );

      // create new instance
      var uuid = uuidGenerator.v4(); // assign new UUID string
      var instance = Person._createInstance( id, name, uuid ); // use named constructor to create an instance

      // cache instance
      _cache[ id ] = instance;
    }

    // return cached instance
    return _cache[ id ];
  }

  // named constructor to create an instance of `Person` class
  // it should start with `_` prefix to make it inaccessible outside the library
  Person._createInstance( this.id, this.name, this.uuid );

  // string representation
  @override
  String toString() {
    return 'id: ${ this.id }, name: ${ this.name }, uuid: ${ this.uuid }';
  }
}


// execution entry function
void main() {

  // create `Person` object with id `1`
  Person p1 = Person( 1, 'John' );
  print( 'p1 : $p1' );

  // create another `Person` object with id `1`
  Person p2 = Person( 1, 'Mike' );
  print( 'p2 : $p2' );

  // create `Person` object with id `2`
  Person p3 = Person( 2, 'Mike' );
  print( 'p3 : $p3' );

}