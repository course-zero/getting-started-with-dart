/**
 * A map is a collection of key:value pairs.
 */
void main() {
  
  // using Map class
  var fingers = new Map<int,String>();
  fingers[1] = 'THUMB';
  fingers[2] = 'INDEX';
  print( "fingers => $fingers \n" );

  // using map literal
  var info = {
    "CARS": [ "AUDI", "BMW" ],
    "FRUITS": [ "APPLE", "ORANGE" ],
    true: "YES",
    123: [ 1, 2, 3 ],
  };

  print("info[CARS] => ${ info['CARS'] }");
  print("info[true] => ${ info[true] }");
  print("info[123] => ${ info[123] }");
  print("info[123] => ${ info['123'] }"); // returns `null` as no value of '123' key

}