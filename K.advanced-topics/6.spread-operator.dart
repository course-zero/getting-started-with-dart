/**
 * A spread operator `...` (three-dots) when placed before a List or a Set or an Iterable,
 * laid out individual elements of that collection.
 * 
 * Spread operator is relatively new to Dart and it is supported in v2.3 and beyond.
 */

/**
 * Example 1:
 * Creating a new list from two or more individual lists.
 */
void example_one() {
  List<String> list_1 = [ "Mango", "Banana", "Apple" ];
  List<String> list_2 = [ "Friends", "BBT", "Suits" ];

  // create a new merged list (old way)
  List<String> list_merged_old = [];
  list_merged_old.addAll( list_1 );
  list_merged_old.addAll( list_2 );

  // create a new merged list (new way)
  List<String> list_merged_new = [ ...list_1, ...list_2 ];

  print( "example_one_old :=> $list_merged_old"  );
  print( "example_one_new :=> $list_merged_new"  );
}


/**
 * Example 2:
 * Creating a list from an Iterable.
 */
void example_two() {
  List<int> numbers = [ 1, 2, 3, 4, 5, 6, 7, 8 ];

  // creating a filtered list (old way)
  // `where` returns an Iterable object.
  List<int> numbers_filtered_old = numbers.where( ( number ) => number % 2 == 0 ).toList();

  // creating a filtered list (new way)
  List<int> numbers_filtered_new = [ ...numbers.where( ( number ) => number % 2 == 0 ) ];

  print( "example_one_old :=> $numbers_filtered_old"  );
  print( "example_one_new :=> $numbers_filtered_new"  );
}

void main() {

  // run example one
  example_one();

  // run example two
  example_two();

}