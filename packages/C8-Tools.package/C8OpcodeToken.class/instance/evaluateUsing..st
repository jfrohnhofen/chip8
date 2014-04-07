evaluating
evaluateUsing: symbolCode

	| result parameters |
	
	result := self evaluateOpcode: opcode.
	parameters := self parameters copy.

	1 to: 4 do: [ :n |
		(self opcode at: n) caseOf: {
			[ $k ] -> [ result := result + (self evaluateKK: parameters removeFirst using: symbolCode) ].
			[ $m ] -> [ result := result + (self evaluateN: parameters removeFirst using: symbolCode) ].
			[ $n ] -> [ result := result + (self evaluateNNN: parameters removeFirst using: symbolCode) ].
			[ $x ] -> [ result := result + (self evaluateX: parameters removeFirst) ].
			[ $y ] -> [ result := result + (self evaluateY: parameters removeFirst) ]
		} otherwise: [ ] ].

	^ self buildByteArray: result