/**
 * Switch statements in Dart looks exactly similar to the one in JavaScript.
 * In switch statement, only one `case` block executed at a time.
 * It is mandatory to add `break` or `return` keyword to terminate a `case` block.
 *
 * When `return` keyword is used, the return value becomes the return value of the function
 * switch statement is present in. Hence having a return statement inside a `case` can terminate the function. 
 */
void main() {
  var finger = 2;

  switch( finger ) {
    case 1:
      print( 'Finger is: THUMB' );
      break;

    // we can add optional `{}` to create a case block
    case 2 :{
      print( 'Finger is: INDEX' );
      break;
    }

    // break can appear outside the `case` block
    case 3: {
      print( 'Finger is: MIDDLE' );
    }
    break;
    
    // a block can have multiple cases
    // `default` case is executed when none of the cases are evaluated
    case 4:
    default: {
      print( 'Finger is: OTHER' );
    }
  }

}
