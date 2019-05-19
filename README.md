# Containers-Queue

[![Build Status](https://travis-ci.com/Ducasse/Containers-Queue.svg?branch=master)](https://travis-ci.com/Ducasse/Containers-Queue)
[![Coverage Status](https://coveralls.io/repos/github//Ducasse/Containers-Queue/badge.svg?branch=master)](https://coveralls.io/github//Ducasse/Containers-Grid?branch=master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)]()
[![Pharo version](https://img.shields.io/badge/Pharo-7.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo version](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)
<!-- [![Build status](https://ci.appveyor.com/api/projects/status/1wdnjvmlxfbml8qo?svg=true)](https://ci.appveyor.com/project/Ducasse/Containers-PropertyEnvironment)  -->


A queue support FIFO (first in first out) behavior.

This package is part of the Containers project: This project is to collect, clean, 
test and document alternate collection datastructures. Each package is modular so that users 
can only load the collection they need without 100 of related collections.

## Example

```
CTEnvironmentTest >> testDequeue

	| queue |
	queue := CTQueue new.
	queue queue: 1. 
	queue queue: 2. 
	queue queue: 3. 
	self assert:  queue dequeue equals: 1.
	self assert:  queue dequeue equals: 2.
]
```



## Loading

```
Metacello new
   baseline: 'ContainersQueue';
   repository: 'github://Ducasse/Containers-Queue/';
   load.
```

## If you want to depend on it

```
spec 
   baseline: 'ContainersQueue' 
   with: [ spec repository: 'github://Ducasse/Containers-Queue/src' ].
```






----
The best way to predict the future is to do it!
Less talking more doing. stepharo.self@gmail.com
