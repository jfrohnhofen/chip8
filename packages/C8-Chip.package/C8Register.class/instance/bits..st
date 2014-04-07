accessing
bits: anInteger

	| oldValue |

	oldValue := self bits.
	bits := anInteger bitAnd: mask.

	(oldValue ~= self bits or: [ self bits = 0 ]) ifTrue: [ self changed ]