initialization
initializeDevices

	| devices display keyboard registers |

	display := (self chip display
		openInWorld;
		scaleFactor: 8;
		owner)
		position: 0 @ 0;
		yourself.

	keyboard := self chip keyboard buildKeypad
		position: 0 @ 256;
		yourself.
		
	registers := self buildRegisters
		position: 256 @ 256;
		yourself.

	devices := Morph new
		addMorph: display;
		addMorph: keyboard;
		addMorph:  registers;
		yourself.
	
	self addMorph: devices fullFrame: (LayoutFrame
		fractions: (0.3 @ 0 corner: 0.3 @ 0) offsets: (-251 @ 20 corner: 261 @ 500)).

	devices
		color: Color transparent;
		borderWidth: 0