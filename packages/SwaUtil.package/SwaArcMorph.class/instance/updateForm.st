updating
updateForm

	| tmp startPt endPt mask |
	tmp := FormCanvas
		extent: self radius @ self radius * 2
		depth: 32.
		
	tmp
		fillColor: Color magenta;
		fillOval: (0@0 corner: tmp extent)
		color: self color
		borderWidth: self borderWidth
		borderColor: self borderColor.
	
	startPt := self startDegree degreeCos @ self startDegree degreeSin.
	endPt := self endDegree degreeCos @ self endDegree degreeSin.
	
	mask := OrderedCollection new.
	mask
		add: 0@0;
		add: startPt.
		
	(self startDegree to: self endDegree by: 45) do: [:degree |
		mask add: ((-1 @ -1 corner: 1@1) pointNearestTo: (degree degreeCos @ degree degreeSin) * 2)].

	mask
		add: endPt.
	
	tmp
		drawPolygon: mask * self radius + self radius
		color: Color magenta
		borderWidth: 0
		borderColor: Color transparent.
	
	(self drawInnerBorder and: [self startDegree ~= self endDegree])
		ifTrue: [
			tmp
				line: (self radius @ self radius)
				to: startPt * (self radius - 2) + self radius
				width: self borderWidth
				color: self borderColor.
		
			tmp
				line: (self radius @ self radius)
				to: endPt * (self radius - 2) + self radius
				width: self borderWidth
				color: self borderColor].
	
	form := tmp form trimBordersOfColor: Color magenta.
	form mapColor: Color magenta to: Color transparent.
	
	self
		extent: form extent;
		changed.