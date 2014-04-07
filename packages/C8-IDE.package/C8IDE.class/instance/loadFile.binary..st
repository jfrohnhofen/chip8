actions
loadFile: aCaption binary: binary

	| stream |

	stream := FileChooser new
		initializeAsSystemWindowWithCaptionPane;
		setCaption: aCaption translated;
		open.

	^ stream ifNotNil: [
			binary ifTrue: [ stream binary ].
			stream contentsOfEntireFile ]