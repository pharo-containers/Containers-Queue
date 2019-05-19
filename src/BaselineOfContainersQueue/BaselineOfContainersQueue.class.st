Class {
	#name : #BaselineOfContainersQueue,
	#superclass : #BaselineOf,
	#category : #BaselineOfContainersQueue
}

{ #category : #baselines }
BaselineOfContainersQueue >> baseline: spec [
	<baseline>

	spec for: #pharo do: [		
		spec package: 'Containers-Queue'.
	]
]
