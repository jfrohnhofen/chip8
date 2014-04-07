opcodes
ldK: anInteger

	"LD V{1}, K"
	"Wait for a key press, store the value of the key in Vx."

	(self register: anInteger) bits: self keyboard waitForKey