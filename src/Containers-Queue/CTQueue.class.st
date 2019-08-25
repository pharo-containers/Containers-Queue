"
I'm a simple FIFO queue i.e., first in first out structure. I support basic collection protocol and in addition enqueue and dequeue as in Scala. 
My basic support of collection API should be reviewd and probably improved (should check atomic queue protocol).


"
Class {
	#name : #CTQueue,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : #'Containers-Queue'
}

{ #category : #'adding/removing' }
CTQueue >> add: anElement [
	"Add an element to the receiver. Note that the addition makes sure that when iterating over the receiver added first element are accessed first."
	
	elements addLast: anElement.
	^ anElement
]

{ #category : #'adding/removing' }
CTQueue >> addAll: aCollection [
	"Add the elements contained in the argument to the receiver. Note that the addition makes sure that when iterating over the receiver added first element are accessed first."
	
	elements addAllLast: aCollection.
	^ aCollection
]

{ #category : #accessing }
CTQueue >> at: anIndex [
	"Accessed the element to the given index in the receiver according to the adding order."
	
	^ elements at: anIndex
]

{ #category : #'adding/removing' }
CTQueue >> dequeue [
	"Return the first added element of the receiver"
	
	^ elements removeFirst
]

{ #category : #'adding/removing' }
CTQueue >> dequeueIfNone: aBlock [
	"Return the first added element of the receiver, if the queue is empty execute a block"
	
	elements ifEmpty: [ ^ aBlock value ].
	^ elements removeFirst
]

{ #category : #iterating }
CTQueue >> do: aBlock [
	"iterates the elements of the receiver starting first by first added elements."
	
	elements do: aBlock
]

{ #category : #testing }
CTQueue >> includes: anElement [
	"Answer if elements is found in the queue"

	^ elements includes: anElement
]

{ #category : #initialize }
CTQueue >> initialize [
	
	elements := OrderedCollection new. 
]

{ #category : #testing }
CTQueue >> isEmpty [

	^ elements isEmpty
]

{ #category : #'adding/removing' }
CTQueue >> queue: anElement [
	"Add an element to the receiver. Note that the addition makes sure that when iterating over the receiver added first element are accessed first."
	
	elements addLast: anElement.
	^ anElement
]

{ #category : #'adding/removing' }
CTQueue >> queueAll: aCollection [
	"Add the elements contained in the argument to the receiver. Note that the addition makes sure that when iterating over the receiver added first element are accessed first."
	
	elements addAllLast: aCollection.
	^ aCollection
]
