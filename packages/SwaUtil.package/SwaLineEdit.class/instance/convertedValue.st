validate/convert
convertedValue

	| raw |
	raw := textMorph text asString.

	self validator = #string
		ifTrue: [^ raw].
	self validator = #integer
		ifTrue: [^ raw asInteger ifNil: [0]].
	self validator = #float
		ifTrue: [^ [(Float readFrom: raw readStream)] on: Error do: [:e | 0.0]].
		
	^ raw