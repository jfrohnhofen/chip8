utitlities
sendKeyboardEvent: aType from: aKey

	| aListenEvent |
	
	aListenEvent := KeyboardEvent new.
	aListenEvent setType: aType buttons: 0 position: 0@0 keyValue: aKey hand: nil stamp: nil.
	self keyboard handleListenEvent: aListenEvent