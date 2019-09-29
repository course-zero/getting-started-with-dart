import 'package:glob/glob.dart';
import 'dart:io';

// start execution
void main() {

	// find all `.dart` files
	var match = Glob( '**/*.dart' );

	// get list of files
	var files = match.listSync();

	for( var entry in files ) {

		// get file path
		final String path = entry.path;

		// create display file name
		var pathParts = path.split( '/' );
		var pathBaseName = pathParts[ pathParts.length - 1 ];
		var displayFileName = pathBaseName.substring( 2 );

		// create snippet image using catage
		Process.start(
			'catage',
			[
				path,
				'${ path }.png',
				'--execute',
				'dart __FILE__', 
				'--display-command',
				'dart ${ displayFileName }',
				'--frame-title',
				'${ displayFileName.split( '.' )[ 0 ] }'
			],
			mode: ProcessStartMode.inheritStdio
		).then( ( process ) {
			print( "Created ${ displayFileName }" );
		} );
	}
}
