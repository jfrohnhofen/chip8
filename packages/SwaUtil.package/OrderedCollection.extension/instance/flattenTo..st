*SwaUtil
flattenTo: level
	"Using asArray here is neccessary to work around a bug in WriteStream where
		(WriteStream on: (OrderedCollection new: 1))
			nextPutAll: (OrderedCollection with: 1);
			contents
	throws 'startIndex is out of bounds' in OrderedCollection>>postCopyFrom:to:"
	(level notNil and: [level < 1]) ifTrue: [^ self].
	^ self species withAll: (self asArray flattenTo: (level ifNotNil: [level - 1]))