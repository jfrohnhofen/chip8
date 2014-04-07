*swautil
printRelativeDate
	"Returns 'Today' or 'Yesterday' or 'MM-DD-YYYY' as String for the date."
	
	self = Date today ifTrue: [^'Today'].
	self = Date yesterday ifTrue: [^'Yesterday'].
	
	^(self printFormat: #(1 2 3 $- 1 1 2))