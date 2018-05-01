tests
testDequeue

	| queue |
	queue := CTQueue new.
	queue queue: 1. 
	queue queue: 2. 
	queue queue: 3. 
	self assert:  queue dequeue equals: 1.
	self assert:  queue dequeue equals: 2.
