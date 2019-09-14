/**
 * In Dart, everything including `null` is an object and they inherit `Object` class.
 * We can use `is` and `is!` operator to check if an object is instance of a class.
 */
void main() {
  print('"Hello" \tis instance of \t"String" class: \t${ "Hello" is String }');
  print('27 \t\tis instance of \t"int" class: \t\t${ 21 is int }');
  print('9.81 \t\tis instance of \t"double" class: \t${ 9.81 is double }');
  print('true \t\tis instance of \t"bool" class: \t\t${ true is bool }');
  print('null \t\tis instance of \t"Null" class: \t\t${ null is Null }');
  
  print('"Hello" \tis instance of \t"Object" class: \t${ "Hello" is Object }');
  print('null \t\tis instance of \t"Object" class: \t${ null is Object }');
}