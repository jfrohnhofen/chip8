as yet unclassified
noCheckNoGrowFillFrom: anArray
	"Add the elements of anArray except nils to me assuming that I don't contain any of them, they are unique and I have more free space than they require."
	
	anArray withIndexDo: [ :element : index | array at: index put: element ]