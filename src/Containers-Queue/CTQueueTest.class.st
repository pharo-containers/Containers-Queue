"
I'm a simple queue i.e., first in first out structure. 
I support basic collection protocol and in addition enqueue and dequeue as in Scala. 


"
Class {
	#name : #CTQueueTest,
	#superclass : #TestCase,
	#category : 'Containers-Queue'
}

{ #category : #tests }
CTQueueTest >> testAdd [

	| queue |
	queue := CTQueue new.
	queue add: 1. 
	queue add: 2. 
	self assert:  (queue includes: 1).
	self assert:  (queue includes: 2).
]

{ #category : #tests }
CTQueueTest >> testAddGarantyFIFOOrder [

	| queue |
	queue := CTQueue new.
	queue add: 'first added element'. 
	queue add: 'second added element'. 
	self assert: (queue at: 1) equals: 'first added element'.
	self assert: (queue at: 2) equals: 'second added element'
]

{ #category : #tests }
CTQueueTest >> testDequeue [

	| queue |
	queue := CTQueue new.
	queue queue: 1. 
	queue queue: 2. 
	queue queue: 3. 
	self assert:  queue dequeue equals: 1.
	self assert:  queue dequeue equals: 2.

]

{ #category : #tests }
CTQueueTest >> testEmptyQueue [

	self assert: CTQueue new isEmpty
]

{ #category : #tests }
CTQueueTest >> testQueue [

	self assert: CTQueue new isEmpty
]

{ #category : #tests }
CTQueueTest >> testQueueGarantyFIFOOrder [

	self assert: CTQueue new isEmpty
]
