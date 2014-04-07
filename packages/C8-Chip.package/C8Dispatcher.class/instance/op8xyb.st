accessing
op8xyb

	| vx vy |

	vx := self opcode nibble: 2.
	vy := self opcode nibble: 1.
	
	Dictionary new
		at: 16r0 put: [ self cpu ldVx: vx Vy: vy ];
		at: 16r1 put: [ self cpu orVx: vx Vy: vy ];
		at: 16r2 put: [ self cpu andVx: vx Vy: vy ];
		at: 16r3 put: [ self cpu xorVx: vx Vy: vy ];
		at: 16r4 put: [ self cpu addVx: vx Vy: vy];
		at: 16r5 put: [ self cpu subVx: vx Vy: vy ];
		at: 16r6 put: [ self cpu shrVx: vx Vy: vy ];
		at: 16r7 put: [ self cpu subnVx: vx Vy: vy ];
		at: 16rE put: [ self cpu shlVx: vx Vy: vy ];
	
		at: (self opcode nibble: 0)
			ifPresent: [ :block | block value ]
			ifAbsent: [ C8InvalidOpcodeException signal ]