"
I'm a simple FIFO queue i.e., first in first out structure. I support basic collection protocol and in addition enqueue and dequeue as in Scala. 


"
Class {
	#name : #CTQueue,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : 'Containers-Queue'
}

{ #category : #testing }
CTQueue >> add: anElement [
	"Add an element to the receiver. Note that the addition makes sure that when iterating over the receiver added first element are accessed first."
	
	elements addLast: anElement.
	^ anElement
]

{ #category : #testing }
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
	"Return the older element of the receiver.."
	
	^ elements removeFirst
]

{ #category : #'adding/removing' }
CTQueue >> dequeueIfNone: aBlock [
	"Return the older element of the receiver.."
	elements ifEmpty: [ aBlock value ].
	^ elements removeFirst
]

{ #category : #iterating }
CTQueue >> do: aBlock [
	"iterates the elements of the receiver starting first by first added elements."
	
	self do: aBlock
]

{ #category : #testing }
CTQueue >> includes: anElement [

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
