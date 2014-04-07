opcodes
ldI: addr

	"LD I, 0x{1}"
	"Set I = nnn."

	(self register: #I) bits: addr.