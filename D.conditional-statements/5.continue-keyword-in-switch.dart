/**
 * A switch statement in Dart executed only one `case` block.
 * But using `continue` keyword, we can manually execute another case block.
 * The block which calls another case block using `continue` keyword,
 * must not terminate using `break` or `return` keywords.
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
