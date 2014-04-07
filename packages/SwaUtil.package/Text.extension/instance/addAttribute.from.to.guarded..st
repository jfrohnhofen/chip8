*swautil-text
addAttribute: att from: start to: stop guarded: checkRange

	(checkRange and: [stop > self size])
		ifFalse: [^ self
			addAttribute: att
			from: start
			to: stop].

	