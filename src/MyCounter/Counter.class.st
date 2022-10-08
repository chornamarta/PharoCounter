"
`Counter` is the simple class which support incrementing and decrementing

Its API is

- `decrement` and `increment`
- `count`

Its creation message is `startAt` 
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startAt: initialInteger [
	^self new count: initialInteger 
]

{ #category : #accessing }
Counter >> count [ 
 ^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	count := anInteger 
	
]

{ #category : #action }
Counter >> decrement [
	count := count -1 .
]

{ #category : #actions }
Counter >> increment [
	count := count +1 .
]

{ #category : #printing }
Counter >> printOn: aStream [ 

super printOn: aStream.
aStream nextPutAll: ' with value:'.
count printOn: aStream.
]
