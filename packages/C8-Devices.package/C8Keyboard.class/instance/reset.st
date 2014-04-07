initialize-release
reset

	0 to: 15 do: [ :n | self keyUp: n ].
	self lastKey: nil