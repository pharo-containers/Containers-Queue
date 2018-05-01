tests
testAdd

	| queue |
	queue := CTQueue new.
	queue add: 1. 
	queue add: 2. 
	self assert:  (queue includes: 1).
	self assert:  (queue includes: 2).