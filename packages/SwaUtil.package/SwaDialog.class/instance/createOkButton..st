user interface helper
createOkButton: aString

	^ SwaPushButton 
		label: aString
		receiver: self
		selector: #ok