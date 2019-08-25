"
I'm a simple queue i.e., first in first out structure. 
I support basic collection protocol and in addition enqueue and dequeue as in Scala. 


"
Class {
	#name : #CTQueueTest,
	#superclass : #TestCase,
	#category : #'Containers-Queue-Tests'
}

{ #category : #'test adding/removing' }
CTQueueTest >> testAdd [

	| queue |
	queue := CTQueue new.
	queue add: 1. 
	queue add: 2. 
	self assert:  (queue includes: 1).
	self assert:  (queue includes: 2).
]

{ #category : #'test adding/removing' }
CTQueueTest >> testAddAll [

	| queue |
	queue := CTQueue new.
	queue addAll: #(1 2 3).
	self assert:  queue dequeue equals: 1.
	self assert:  queue dequeue equals: 2.
	self assert:  queue dequeue equals: 3.

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

{ #category : #'test - accessing' }
CTQueueTest >> testAt [ 

	| queue |
	queue := CTQueue new.
	queue add: 'a'. 
	queue add: 'b'.
	
	self assert: (queue at: 1) equals: 'a'.
	self assert: (queue at: 2) equals: 'b'.
]

{ #category : #'test adding/removing' }
CTQueueTest >> testDequeue [

	| queue |
	queue := CTQueue new.
	queue addAll: #(1 2 3).
	self assert:  queue dequeue equals: 1.
	self assert:  queue dequeue equals: 2.
	self assert:  queue dequeue equals: 3.

]

{ #category : #'test adding/removing' }
CTQueueTest >> testDequeueIfNone [

	| queue value |
	queue := CTQueue new.
	value := queue dequeueIfNone: [ 0 ].
	self assert: value equals: 0.


]

{ #category : #'test iterating' }
CTQueueTest >> testDo [ 

	| queue |
	queue := CTQueue new.
	queue addAll: #(2 3).
	queue := queue do: [ :el | queue add: 2 * el].
	self assert: queue dequeue equals: 2.
	self assert: queue dequeue equals: 3.
	self assert: queue dequeue equals: 4.
	self assert: queue dequeue equals: 6.
]

{ #category : #'test testing' }
CTQueueTest >> testIncludes [

	| queue |
	queue := CTQueue new.
	queue add: 1.
	queue add: 2.
	self assert: (queue includes: 1).
]

{ #category : #'test - instance creation' }
CTQueueTest >> testInitialize [ 

	| queue |
	queue := CTQueue new.
	self assert: queue isEmpty.
]

{ #category : #'test testing' }
CTQueueTest >> testIsEmpty [

	| queue |
	queue := CTQueue new.
	self assert: queue isEmpty.
]

{ #category : #'test adding/removing' }
CTQueueTest >> testQueue [

	| queue |
	queue := CTQueue new.
	queue queue: 1. 
	queue queue: 2. 
	self assert:  (queue includes: 1).
	self assert:  (queue includes: 2).
]

{ #category : #'test adding/removing' }
CTQueueTest >> testQueueAll [

	| queue |
	queue := CTQueue new.
	queue queueAll: #(1 2 3).
	self assert:  queue dequeue equals: 1.
	self assert:  queue dequeue equals: 2.
	self assert:  queue dequeue equals: 3.

]

{ #category : #tests }
CTQueueTest >> testQueueGarantyFIFOOrder [

	self assert: CTQueue new isEmpty
]
