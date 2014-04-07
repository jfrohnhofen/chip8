initialization
buildRegisters

	| layout label |

	self registers: Dictionary new.

	layout := #(
		#( #PC #SP #I #DT #ST )
		#( #V0 #V1 #V2 #V3 #V4 #V5 #V6 #V7 )
		#( #V8 #V9 #VA #VB #VC #VD #VE #VF) ).

	self registerMorph: (Morph new
		extent: 250 @ 250;
		color: Color white darker;
		yourself).

	1 to: layout size do: [ :col |
		1 to: (layout at: col) size do: [ :row |
			label := (layout at: col) at: row.
			self registerMorph addMorph: (self buildRegisterMorph: label col: col row: row) ] ].

	^ self registerMorph