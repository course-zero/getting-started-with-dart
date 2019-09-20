/**
 * `continue` keyword in Dart `switch` statement to
 * execute multiple cases
 */
void main() {
  var size = 'LARGE'; // `LARGE` size gets free `SMALL`size

  switch( size ) {
    case 'LARGE': {
      print('Received LARGE size');
      continue SMALL_PRODUCT; // break is not needed
    }

    case 'MEDIUM': {
      print('Received MEDIUM size');
      break;
    }

    SMALL_PRODUCT: // this is a label
    case 'SMALL': {
      print('Received SMALL size');
      break;
    }
  }
}