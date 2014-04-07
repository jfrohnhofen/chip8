*swautil
join: delimter
	"expects self to be collection of strings and delimter to be a string.
	returns the concatenation of the elements separeted by the delimiter"

	| stream |
	stream := WriteStream with: String new.
	self
		do: [: elem | stream nextPutAll: elem]
		separatedBy: [ stream nextPutAll: delimter].
	^ stream contents