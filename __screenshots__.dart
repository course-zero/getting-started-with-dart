import 'package:glob/glob.dart';
import 'dart:io';

// start execution
void main() {

	// find all `.dart` files
	var match = Glob( 'K.advanced-topics/*.dart' );

	// get list of files
	var files = match.listSync();

	for( var entry in files ) {

		// get file path
		final String path = entry.path;

		// create display file name
		var pathParts = path.split( '/' );
		var pathBaseName = pathParts[ pathParts.length - 1 ];
		var displayFileName = pathBaseName.substring( 2 );
    var displayTitle = displayFileName.split( '.' )[ 0 ].replaceAll( "-" , " ");
    var displayTitleCleaned = displayTitle[ 0 ].toUpperCase() + displayTitle.substring( 1 );

		// create snippet image using catage
		Process.start(
			'catage',
			[
				path,
				'${ path }.png',
				'--execute',
				'dart __FILE__', 
				'--language',
				'dart',
				'--theme',
				'Material',
				'--display-command',
				'dart ${ displayFileName }',
				'--frame-title',
				'${ displayTitleCleaned }'
			],
			mode: ProcessStartMode.inheritStdio
		).then( ( process ) {
			print( "Created ${ displayFileName }" );
		} );
	}
}
