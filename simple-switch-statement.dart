/**
 * `switch/case` conditional statement.
 */
void main() {
  var finger = 2;

  switch( finger ) {
    case 1:
      print( 'Finger is: THUMB' );
      break;

    // we can add {} to create case block
    case 2 :{
      print( 'Finger is: INDEX' );
      break;
    }

    // break can appear outside case block
    case 3: {
      print( 'Finger is: MIDDLE' );
    }
    break;

    case 4:
    default: {
      print( 'Finger is: OTHER' );
    }
  }

}