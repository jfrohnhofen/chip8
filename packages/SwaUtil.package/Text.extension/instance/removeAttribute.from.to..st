*swautil-text
removeAttribute: attr from: start to: stop
	"Removes an attribute kind over the interval start to stop."
	
	runs := runs
		copyReplaceFrom: start
		to: stop
		with: ((runs copyFrom: start to: stop)	mapValues:
			[:attributes | attributes reject: [:each | each = attr]])