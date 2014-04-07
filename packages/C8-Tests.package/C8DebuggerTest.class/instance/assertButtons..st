converting
assertButtons: active

	self debugger buttons keysAndValuesDo: [ :label :button |
		(active includes: label)
			ifTrue: [ self assert: button actWhen equals: #buttonUp ]
			ifFalse: [ self assert: button actWhen equals: #never ] ]
