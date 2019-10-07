/**
 * Dart empowers `class` to create compile-time constant objects.
 * 
 * If a class has `final` fields, these fields are initialized at runtime but later can not be modified.
 * When multiple objects are created from this class, like by passing the same arguments to the constructor,
 * a new instance of the class is created every single time.
 * 
 * We can create a constant constructor by placing `const` keyword before it.
 * Using constant constructors, a compile-time constant object is created.
 * Const constructors are used to create canonicalized instances,
 * which means a class instantiation with the same arguments will return the old instance from the memory.
 * 
 * Using the same principle, we are able to create compile-time constant List, Set and Map.
 */


// class with no support to create compile-time constant objects
class RegularPoint {
  final int x;
  final int y;

  RegularPoint( this.x, this.y ); // `final` fields needs constructor without body
}

// class with optional support to create compile-time constant objects
class PerfectPoint {
  final int x;
  final int y;

  const PerfectPoint( this.x, this.y ); // `const` default constructor
  const PerfectPoint.named( { this.x, this.y } ); // `const` named constructor
}

// main execution function
void main() {

  // create regular points
  var rp1 = RegularPoint( 1, 1 ); // instance 1
  var rp2 = RegularPoint( 1, 1 ); // instance 2
  print( 'rp1 == rp2 : ${ rp1 == rp2 }' );

  // create perfect points
  var pp1 = const PerfectPoint( 1, 1 );              // instance 1 : canonicalized
  var pp2 = const PerfectPoint( 1, 1 );              // instance 1
  var pp3 = const PerfectPoint.named( x: 1, y: 1 );  // instance 1
  var pp4 = PerfectPoint( 1, 1 );                    // instance 2 : new instance
  print( 'pp1 == pp2 : ${ pp1 == pp2 }' );
  print( 'pp1 == pp3 : ${ pp1 == pp3 }' );
  print( 'pp1 == pp4 : ${ pp1 == pp4 }' );
}