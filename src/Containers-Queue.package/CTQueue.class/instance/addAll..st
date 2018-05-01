testing
addAll: aCollection
	"Add the elements contained in the argument to the receiver. Note that the addition makes sure that when iterating over the receiver added first element are accessed first."
	
	elements addAllLast: aCollection.
	^ aCollection