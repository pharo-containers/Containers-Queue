Class {
	#name : #CTQueue,
	#superclass : #Object,
	#instVars : [
		'head',
		'tail'
	],
	#category : #'Containers-Queue'
}

{ #category : #adding }
CTQueue >> add: anElement [
	"Add an element to the end of the queue (FIFO order)."
	^ self queue: anElement
]

{ #category : #adding }
CTQueue >> addAll: aCollection [
	"Add all elements from aCollection to the end of the queue."
	aCollection do: [ :each | self queue: each ].
	^ aCollection
]

{ #category : #accessing }
CTQueue >> at: anIndex [
	"Access the element at the given 1-based index in FIFO order."
	| current index |
	(anIndex < 1) ifTrue: [ self error: 'Index out of bounds' ].
	current := head.
	index := 1.
	[ current isNil or: [ index = anIndex ] ] whileFalse: [ 
		current := current next.
		index := index + 1.
	].
	current ifNil: [ self error: 'Index out of bounds' ].
	^ current value
]

{ #category : #removing }
CTQueue >> dequeue [
	"Remove and return the oldest element (FIFO)."
	| value |
	head ifNil: [ self error: 'Queue is empty' ].
	value := head value.
	head := head next.
	head ifNil: [ tail := nil ].
	^ value
]

{ #category : #removing }
CTQueue >> dequeueIfNone: aBlock [
	"Remove and return the oldest element, or evaluate aBlock if empty."
	head ifNil: [ ^ aBlock value ].
	^ self dequeue
]

{ #category : #iterating }
CTQueue >> do: aBlock [
	"Iterate over elements in FIFO order."
	| current |
	current := head.
	[ current notNil ] whileTrue: [ 
		aBlock value: current value.
		current := current next.
	]
]

{ #category : #testing }
CTQueue >> includes: anElement [
	"Check if anElement exists in the queue."
	| current |
	current := head.
	[ current notNil ] whileTrue: [ 
		current value = anElement ifTrue: [ ^ true ].
		current := current next.
	].
	^ false
]

{ #category : #initialization }
CTQueue >> initialize [
	"Initialize an empty queue."
	super initialize.
	head := nil.
	tail := nil.
]

{ #category : #testing }
CTQueue >> isEmpty [
	"Return true if the queue is empty."
	^ head isNil
]

{ #category : #adding }
CTQueue >> queue: anElement [
	"Add an element to the end of the queue (FIFO order)."
	| newNode |
	newNode := CTQueueNode new value: anElement.
	head ifNil: [ 
		head := newNode.
		tail := newNode.
	] ifNotNil: [ 
		tail next: newNode.
		tail := newNode.
	].
	^ anElement
]

{ #category : #adding }
CTQueue >> queueAll: aCollection [
	"Add all elements from aCollection to the end of the queue."
	aCollection do: [ :each | self queue: each ].
	^ aCollection
]