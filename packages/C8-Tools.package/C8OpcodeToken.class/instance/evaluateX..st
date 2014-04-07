evaluating
evaluateX: value

	^ (Integer readFrom: value base: 16) bitShift: 8