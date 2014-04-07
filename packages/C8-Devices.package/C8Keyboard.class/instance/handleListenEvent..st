events-processing
handleListenEvent: anEvent

	| key |

	(anEvent isKeyboard and: [ anEvent isKeyUp ]) ifFalse: [ ^ nil ].
	
	key := self mapCharacterToKey: anEvent keyCharacter.
	key >= 0 ifTrue: [ self toggleButton: key ]