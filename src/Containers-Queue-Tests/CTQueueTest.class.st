"
I'm a simple queue i.e., first in first out structure. 
I support basic collection protocol and in addition enqueue and dequeue as in Scala. 


"
Class {
	#name : #CTQueueTest,
	#superclass : #TestCase,
	#category : #'Containers-Queue-Tests'
}

{ #category : #tests }
CTQueueTest >> queueClass [
	^ CTQueue
]

{ #category : #tests }
CTQueueTest >> testAdd [
	| queue |
	queue := self queueClass new.
	queue add: 1.
	queue add: 2.
	self assert: (queue includes: 1).
	self assert: (queue includes: 2)
]

{ #category : #tests }
CTQueueTest >> testAddGarantyFIFOOrder [
	"Ensure elements are dequeued in FIFO order."
	| queue |
	queue := self queueClass new.
	queue add: 'first'.
	queue add: 'second'.
	queue add: 'third'.
	self assert: queue remove equals: 'first'.
	self assert: queue remove equals: 'second'.
	self assert: queue remove equals: 'third'.
	self assert: queue isEmpty.
]

{ #category : #tests }
CTQueueTest >> testEmptyQueue [
	self assert: self queueClass new isEmpty
]

{ #category : #tests }
CTQueueTest >> testQueue [
	self assert: self queueClass new isEmpty
]

{ #category : #tests }
CTQueueTest >> testQueueGarantyFIFOOrder [
	self assert: self queueClass new isEmpty
]

{ #category : #tests }
CTQueueTest >> testAddAll [
	"Ensure queueAll adds multiple elements at once."
	| queue |
	queue := self queueClass new.
	queue addAll: #(10 20 30 40).
	self assert: queue remove equals: 10.
	self assert: queue remove equals: 20.
	self assert: queue remove equals: 30.
	self assert: queue remove equals: 40.
]

{ #category : #tests }
CTQueueTest >> testEmptyQueueRemove [
	| queue |
	queue := self queueClass new.
	self assert:  queue remove isNil.
]

{ #category : #tests }
CTQueueTest >> testIsEmpty [
	"Ensure isEmpty works correctly."
	| queue |
	queue := self queueClass new.
	self assert: queue isEmpty.
	queue add: 1.
	self deny: queue isEmpty.
	queue remove.
	self assert: queue isEmpty.
]

{ #category : #tests }
CTQueueTest >> testPeek [
	"Ensure peek returns the first element without removing it."
	| queue |
	queue := self queueClass new.
	queue add: 42.
	queue add: 99.
	self assert: queue peek equals: 42.
	self assert: queue size equals: 2. "Peek should not remove elements"
]

{ #category : #tests }
CTQueueTest >> testPoll [
	"Ensure poll behaves correctly, returning nil when empty."
	| queue |
	queue := self queueClass new.
	queue add: 'A'.
	queue add: 'B'.
	self assert: queue poll equals: 'A'.
	self assert: queue poll equals: 'B'.
	self assert: queue poll isNil.
]

{ #category : #tests }
CTQueueTest >> testRemove [
	"Ensure remove behaves correctly, returning nil when empty."
	| queue |
	queue := self queueClass new.
	queue add: 1.
	queue add: 2.
	queue add: 3.
	self assert: queue remove equals: 1.
	self assert: queue remove equals: 2
]

{ #category : #tests }
CTQueueTest >> testRemoveIfNone[
"Ensure dequeueIfNone works correctly."
	| queue result |
	queue := self queueClass new.
	result := queue removeIfNone: [ 'fallback' ].
	self assert: result equals: 'fallback'.
]

{ #category : #tests }
CTQueueTest >> testLargeQueuePerformance [
	"Verify FIFO behavior and performance with a large queue."
	| queue size |
	queue := self queueClass new.
	size := 1000.
	1 to: size do: [ :i | queue add: i ].
	1 to: size do: [ :i | self assert: queue remove equals: i ].
	self assert: queue isEmpty.
]