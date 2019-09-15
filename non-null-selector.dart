/**
 * ?? operator is used to select the non-null value.
 */
void main() {
  var x = 10;
  int y; // null value on init

  var safe_x = x ?? 0; // since `x` is not null, get value of x which is 10
  var safe_y = y ?? 0; // since `y` is null, get 0

  print( "x + y = ${ safe_x + safe_y }" );
}