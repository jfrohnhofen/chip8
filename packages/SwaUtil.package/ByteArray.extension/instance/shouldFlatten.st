*SwaUtil
shouldFlatten
	"Don't flatten my subclasses, they're specialized objects"
	^ self class name = #ByteArray 