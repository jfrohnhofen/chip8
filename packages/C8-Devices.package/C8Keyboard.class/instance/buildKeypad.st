initialize-release
buildKeypad

	| keypad layout label |

	self buttons: Dictionary new.

	layout := #(
		#(1 2 3 12)
		#(4 5 6 13)
		#(7 8 9 14)
		#(10 0 11 15)).

	keypad := Morph new
		extent: 250 @ 250;
		color: Color gray darker;
		yourself.

	1 to: layout size do: [ :row |
		1 to: (layout at: row) size do: [ :col |
			label := (layout at: row) at: col.
			keypad addMorph: (self buildButton: label col: col row: row) ] ].

	^ keypad