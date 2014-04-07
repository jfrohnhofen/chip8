updating
updateButtons: active

	self buttons keysAndValuesDo: [ :label :button |
		(active includes: label)
			ifTrue: [ self activateButton: button ]
			ifFalse: [ self deactivateButton: button ] ]