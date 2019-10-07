/**
 * An `assertion` is a `check` to verify if a `value` is what it's supposed to be.
 * Using assertion, we can avoid a `disaster` caused by a bad `value` and
 * terminate the program by throwing an error before that `value` is consumed.
 * 
 * Dart provides `assert` function which takes a value or expression and an optional error message.
 * If the value or the expression evaluates to false, it throws `AssertionError` and terminates the program.
 * 
 * Dart does not evaluate assertions in `Production` mode.
 * If you are using Flutter, assertions are evaluated in `Debug` mode.
 * If you are using `dart` CLI, use `--enable-asserts` flag to enable assertions.
 * For example, `dart --enable-asserts <file-name>`.
 * 
 * If a class constructor takes named arguments, they are optional and their default value is `null`.
 * If an instance variable must not be `null`, then we need to `assert` it.
 */
class Person extends Object {
  int id; // must not be `null`
  String name; // must not be `null`
  int age; // `null` allowed

  // default constructor (single line)
  // `super()` call is optional
  Person( { this.id, this.name, this.age } ) : assert( id != null ), assert( name != null, 'Argument `name` should not be `null`.' ), super();

  // named constructor
  Person.create( { id, name, age } ) : super() {
    assert( id != null );
    assert( name != null, 'You must provide `name` of the person.' );

    // assign instance variable values
    this.id = id;
    this.name = name;
    this.age = age;
  }

  // string representation
  @override
  String toString() {
    return 'id: ${ this.id }, name: ${ this.name }, age: ${ age }';
  }
}

// execution entry function
void main() {

  // create a `Person` object
  Person p = Person( id: 1 ); // or `Person.create( id: 1 );`
  print( 'p: $p' );

}