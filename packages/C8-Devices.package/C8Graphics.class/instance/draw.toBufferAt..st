drawing
draw: spriteData toBufferAt: anIndex

	| bufferRow |
	
	bufferRow := self buffer at: anIndex.

	self collisionFlag: (self collisionFlag or: [ (bufferRow bitAnd: spriteData) ~= 0 ]). 
	self buffer at: anIndex put: (bufferRow bitXor: spriteData).