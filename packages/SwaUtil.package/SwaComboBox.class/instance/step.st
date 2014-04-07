stepping
step
	"Reset mouse focus to the list if it is showing."

	self listVisible ifTrue: [
		self activeHand mouseFocus ifNil: [
			self activeHand newMouseFocus: self listMorph]]