actions
compile

	| successful editorText |

	editorText := self editor text string.
	self source: (editorText copyReplaceAll: String lf with: String cr).
	self binary: (self compiler compile: self source).

	successful := self compiler successful.
	self console setText: (successful
		ifTrue: [ 'Successfully compiled.' ]
		ifFalse: [ self compiler errors ]).

	^ successful