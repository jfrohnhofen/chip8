evaluating
evaluateUsing: labelCode

	^ self data collect: [ :byte | self evaluateByte: byte ]