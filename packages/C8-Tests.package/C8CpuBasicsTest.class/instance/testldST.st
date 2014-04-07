tests
testldST

	| st vx |

	st := self cpu register: #ST.
	vx := self cpu register: 2.
	vx bits: 6.
	self cpu ldST: 2.
	self assert: st bits equals: 6