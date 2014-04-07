event handling
keyStroke: evt
	"If pane is not empty, pass the event to the last submorph,
	assuming it is the most appropriate recipient (!)"

	(self scrollByKeyboard: evt) ifTrue: [^self].

	(evt controlKeyPressed and: [evt keyCharacter = Character arrowUp])
		ifTrue: ["mouse wheel up" vScrollbar scrollUp: 3].

	(evt controlKeyPressed and: [evt keyCharacter = Character arrowDown])
		ifTrue: ["mouse wheel down" vScrollbar scrollDown: 3].
	
	self scrollTarget keyStroke: evt.