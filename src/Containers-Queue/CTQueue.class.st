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

{ #category : #adding }
CTQueue >> add: anElement [
	"Add an element to the receiver. Note that the addition makes sure that when iterating over the receiver added first element are accessed first."
	
	elements addLast: anElement.
	^ anElement
]

{ #category : #adding }
CTQueue >> addAll: aCollection [
	"Add the elements contained in the argument to the receiver. Note that the addition makes sure that when iterating over the receiver added first element are accessed first."
	
	elements addAllLast: aCollection.
	^ aCollection
]

{ #category : #iterating }
CTQueue >> do: aBlock [
	"iterates the elements of the receiver starting first by first added elements."
	
	elements do: aBlock
]

{ #category : #testing }
CTQueue >> includes: anElement [

	^ elements includes: anElement
]

{ #category : #initialization }
CTQueue >> initialize [
	super initialize.
	elements := OrderedCollection new. 
]

{ #category : #testing }
CTQueue >> isEmpty [

	^ elements isEmpty
]

{ #category : #removing }
CTQueue >> remove [
	"Return the older element of the receiver.."
	
	^ elements ifEmpty: [ nil ] ifNotEmpty: [ elements removeFirst ].
]

{ #category : #removing }
CTQueue >> removeIfNone: aBlock [
	"Return the older element of the receiver.."
	elements ifEmpty: [ ^ aBlock value ].
	^ elements removeFirst
]

{ #category : #removing }
CTQueue >> poll [
	"Returns and removes the front element, or nil if empty."
	^ elements ifEmpty: [ nil ] ifNotEmpty: [ elements removeFirst ].
]

{ #category : #accessing }
CTQueue >> peek [
	^ elements ifEmpty: [ nil ] ifNotEmpty: [ elements first ].
]

{ #category : #accessing }
CTQueue >> size [
	^ elements size
]