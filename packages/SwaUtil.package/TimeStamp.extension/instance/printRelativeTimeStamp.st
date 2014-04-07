*swautil
printRelativeTimeStamp

	^ (self date printRelativeDate, ', ', self time print24WithoutSeconds)