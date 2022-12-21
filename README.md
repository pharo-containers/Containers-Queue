# Containers-Queue

[![Build Status](https://travis-ci.com/pharo-containers/Containers-Queue.svg?branch=master)](https://travis-ci.com/pharo-containers/Containers-Queue)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)]()
[![Pharo version](https://img.shields.io/badge/Pharo-7.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo version](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)

A queue support FIFO (first in first out) behavior. Now it is a bit limited so feel free to enhance it.

This package is part of the Containers project: This project is to collect, clean, 
test and document alternate collection datastructures. Each package is modular so that users 
can only load the collection they need without 100 of related collections.

## Example

```smalltalk
CTEnvironmentTest >> testDequeue [

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

```smalltalk
Metacello new
   baseline: 'ContainersQueue';
   repository: 'github://pharo-containers/Containers-Queue/';
   load.
```

## If you want to depend on it

```smalltalk
spec 
   baseline: 'ContainersQueue' 
   with: [ spec repository: 'github://pharo-containers/Containers-Queue/src' ].
```


----
The best way to predict the future is to do it!
Less talking more doing. stephane.ducasse@inria.fr
