*swautil
print24WithoutSeconds
	"Return as 8-digit string 'hh:mm', with leading zeros if needed"

	^ String streamContents:
		[ :aStream | self print24: true showSeconds: false on: aStream ]