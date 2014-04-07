accessing
checkState

	^ checkState ifNil: [checkState := #unchecked]