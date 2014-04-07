tests
testCpuLdK

	"Delays are necessary for Squeak to synchronize.."

	[ self cpu ldK: 5 ] fork.
	(Delay forMilliseconds: 100) wait.
	self cpu keyboard keyDown: 10.
	(Delay forMilliseconds: 100) wait.
	self assert: (self cpu register: 5) bits equals: 16rA.
	self cpu keyboard detach
