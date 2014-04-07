user interface helper
createCancelButton: aString

	^ SwaPushButton 
		label: aString
		receiver: self
		selector: #cancel