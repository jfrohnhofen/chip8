accessing
validator
	"Used for conversion purposes of input data. #string #integer #float"

	^ validator ifNil: [validator := #string]