/**
 * A set is like a List data structure but it can only contain unique values.
 * A set can be created with {} literal syntax or using Set class.
 */
void main() {

  final name = 'Gandhi';
  print( name );

  // set using literal syntax and initial values
  // any duplicate values will be removed
  var fruits = { 'Apple', 'Orange', 'Banana', 'Orange' };
  fruits.add( 'Mango' );
  // fruits.add( 100 ); :=> INVALID Data Type
  print( 'fruits: $fruits \n' ); 

  // create empty set
  var otherFruits = new Set<String>();
  otherFruits.add( 'Grapes' );
  otherFruits.addAll( fruits ); // add elements from a set
  otherFruits.addAll( [ 'Guava', 'Grapes', 'Guava' ] ); // add elements from a list
  print( 'otherFruits: $otherFruits' ); 
}