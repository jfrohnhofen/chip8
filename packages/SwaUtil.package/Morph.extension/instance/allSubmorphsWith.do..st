*swautil
allSubmorphsWith: aConditionBlock do: aBlock 
	"Evaluate the given block for all morphs in this composite morph (including the receiver)."

	submorphs do: [:m | aBlock value: m.
		(aConditionBlock value: m)
			ifTrue: [m allSubmorphsWith: aConditionBlock do: aBlock]].