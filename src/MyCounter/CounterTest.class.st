Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	|c|
	c:= Counter new.
	c count: 5.
	self assert: c count equals: 5 .
	c count: 0.
	self assert: c count equals: 0. 
]

{ #category : #tests }
CounterTest >> testCreation [ 
	|c|
	c:= Counter startAt: 5.
	self assert: c count equals: 5.
	self assert: (Counter startAt: 0) count equals: 0. 
]

{ #category : #tests }
CounterTest >> testDecrement [
	|c|
	c:= Counter startAt: 5.
	c decrement; decrement .
	self assert: c count  equals: 3.
	c decrement; decrement .
	self assert: c count  equals: 1.
]

{ #category : #tests }
CounterTest >> testIncrement [
	|c|
	c:= Counter startAt: 0.
	c increment; increment .
	self assert: c count  equals: 2.
	c increment; increment .
	self assert: c count  equals: 4.
]
