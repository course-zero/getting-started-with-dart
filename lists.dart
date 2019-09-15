/**
 * Dart provides `List` class to create Array-like data structure.
 * new List(n) => List of fixed `n` size.
 * new List<int>(n) => List of integers with fixed `n` size.
 * new List() => Growable list of infinite size.
 * ['A', 'B'] => Growable list with initial values.
 */
void main() {

  // list of `dynamic` data type of size 3
  List fixedDynamicList = new List(3);
  // SAME AS :=> List<dynamic> fixedDynamicList = new List<dynamic>(3);
  fixedDynamicList[0] = 1;
  fixedDynamicList[1] = 'HELLO';
  print( fixedDynamicList );
  print( "fixedDynamicList[1] => ${ fixedDynamicList[1] }\n" );

  // list of `String` data type of growable size
  List growableStringList = new List<String>();
  growableStringList.add( "Orange" );
  growableStringList.add( "Apple" );
  // growableStringList.add( 1 ); :=> INVALID data type
  // print( "growableStringList[10] => ${ growableStringList[1] }" ); //=> INVALID: Not in range
  print( growableStringList );
  print( "growableStringList[1] => ${ growableStringList[1] }\n" );

  // list of `dynamic` data type of growable size with inial value
  var growableDynamicList = [ 1, "Hello" ];
  growableDynamicList.add( "World" );
  print( "growableDynamicList => ${ growableDynamicList }" );
  print( "growableDynamicList.length => ${ growableDynamicList.length }" );

}