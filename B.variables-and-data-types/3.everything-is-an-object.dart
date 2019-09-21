/**
 * In Dart, everything including `null` is an object and they inherit from `Object` class.
 * We use `is` and `is!` operator to check if an object is an instance-of or type-of a class.
 */
void main() {
  
  // check if `"Hello"` is type-of/instance-of `String` class
  print('"Hello" \tis instance of \t"String" class: \t${ "Hello" is String }');
  
  // check if `21` is type-of/instance-of `int` class
  print('27 \t\tis instance of \t"int" class: \t\t${ 21 is int }');
  
  // check if `9.81` is type-of/instance-of `double` class
  print('9.81 \t\tis instance of \t"double" class: \t${ 9.81 is double }');
  
  // check if `true` is type-of/instance-of `bool` class
  print('true \t\tis instance of \t"bool" class: \t\t${ true is bool }');
  
  // check if `null` is type-of/instance-of `Null` class
  print('null \t\tis instance of \t"Null" class: \t\t${ null is Null }');
  
  // check if any object is type-of/instance-of `Object` class
  // since all objects inherit `Object` class, they are type-of `Object` (polymorphism)
  print('"Hello" \tis instance of \t"Object" class: \t${ "Hello" is Object }');
  print('null \t\tis instance of \t"Object" class: \t${ null is Object }');
}
