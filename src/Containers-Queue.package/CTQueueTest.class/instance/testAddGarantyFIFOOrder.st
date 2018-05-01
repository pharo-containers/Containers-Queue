tests
testAddGarantyFIFOOrder

	| queue |
	queue := CTQueue new.
	queue add: 'first added element'. 
	queue add: 'second added element'. 
	self assert: (queue at: 1) equals: 'first added element'.
	self assert: (queue at: 2) equals: 'second added element'