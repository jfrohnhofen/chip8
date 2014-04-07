accessing
removeKeysFrom: startKey toLastAndDo: aBlock 
	| index |
	index := self orderedKeys indexOf: startKey.
	(self orderedKeys copyFrom: index to: self orderedKeys size) do: [ :eachKey | 
		self removeKey: eachKey.
		self orderedKeys remove: eachKey.
		aBlock value: eachKey ]