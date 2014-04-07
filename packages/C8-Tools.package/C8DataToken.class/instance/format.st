printing
format

	| data |
	
	data := self data inject: '' into: [ :result :byte | result, byte, ' ' ].
	^ self formatAddress, data, String cr