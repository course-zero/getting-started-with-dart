/**
 * ?? operator is used to select the non-null value.
 */
void main() {
  var x = 10;
  int y; // y has `null` initial value

  var safe_x = x ?? 0; // since `x` is not null, safe_x get the value of `x` which is `10`
  var safe_y = y ?? 0; // since `y` is `null`, safe_y gets `0` value

  print( "x + y = ${ safe_x + safe_y }" );
}
