initialization
newMainPanel
	"Answer a new main panel."

	^ self createCol: {
		self contentMorph.
		self newButtonRow
	}