/**
 * Dart provides `List` class to create an Array-like data structure.
 * Dart lists can be fixed in length or growable depending on how it was declared.
 * Dart lists can hold data of a fixed Data Type or data of any data type, also depending on how it was declared.
 *
 *
 * new List(n)         => List of fixed `n` size that can hold elements of dynamic Data Type
 * new List<int>(n)    => List of fixed `n` size that can hold elements of `int` Data Type only
 * new List()          => Growable list of infinite size that can hold elements of dynamic Data Type
 * ['A', 'B']          => Literal expression to declare a growable list with initial values.
 */
void main() {

  // list of fixed length (below lists contain 3 exact elements)
  List<dynamic> fixedList = new List(3); // `List<dynamic> fixedDynamicList` is same as `List fixedDynamicList`
  List<num> fixedNumList = new List(3); // can contain elements of `num`, `int` or `double`
  
  // list with fixed length contains null objects
  print( fixedList ); // [ null, null, null ]
  
  // override a value of an element in the list 
  fixedList[1] = 'HELLO'; // override value at index 1
  
  print( fixedList );
  
  /************************/

  // growable lists are defined without any argument in `List()` constructor
  List<String> growableStringList = new List();
  growableStringList.add( "Orange" ); // add element to growableStringList
  growableStringList.add( "Apple" ); // add element to growableStringList
  // growableStringList.add( 1 ); // invalid operation as `1` is not a `String` type value
  
  // override a value at an existing index
  growableStringList[1] = 'Mango';

  print( growableStringList );
  
  /************************/
  
  // declaring a growable list with initial values using List literal syntax
  var growableDynamicList = [ 1, "Hello" ]; // creates a List that can hold objects of any type
  var growableDoubleList = [ 1.0, 2.1 ]; // creates a List that can hold only `double` values
  
  growableDynamicList.add( "World" );
  print( "growableDynamicList => ${ growableDynamicList }" );
  print( "growableDynamicList.length => ${ growableDynamicList.length }" );

}
