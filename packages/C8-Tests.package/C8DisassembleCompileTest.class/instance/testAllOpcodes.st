tests
testAllOpcodes

	"This test tests all possible opcodes and takes a couple of minutes to execute."

	| compiler disassembler binaryBefore binaryAfter source |

	compiler := C8Compiler new.
	disassembler := C8Disassembler new. 

	0 to: 255 do: [ :x |
		0 to: 255 do: [ :y |
			binaryBefore := OrderedCollection new
				add: x;
				add: y;
				asByteArray.
			source := disassembler disassemble: binaryBefore.
			binaryAfter := compiler compile: source.

			self assert: binaryAfter equals: binaryBefore ] ]