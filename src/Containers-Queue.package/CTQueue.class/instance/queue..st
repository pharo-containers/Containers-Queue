adding/removing
queue: anElement
	"Add an element to the receiver. Note that the addition makes sure that when iterating over the receiver added first element are accessed first."
	
	elements addLast: anElement.
	^ anElement