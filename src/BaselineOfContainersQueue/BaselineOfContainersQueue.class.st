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
		spec package: 'Containers-Queue-Tests' with: [ spec requires: 'Containers-Queue' ].
	]
]
