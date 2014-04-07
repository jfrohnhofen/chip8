actions
decrementTimers

	(self cpu)
		decrement: #DT;
		decrement: #ST
			onZero: [ self sound ifNotNil: [ self sound pause ] ]