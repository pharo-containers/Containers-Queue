adding/removing
dequeueIfNone: aBlock
	"Return the older element of the receiver.."
	elements ifEmpty: [ aBlock value ].
	^ elements removeFirst