instance creation
data: bytes lineNumber: lineNumber address: address

	^ C8DataToken new
		data: bytes;
		lineNumber: lineNumber;
		address: address;
		yourself
