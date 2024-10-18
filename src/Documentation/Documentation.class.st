Class {
	#name : #Documentation,
	#superclass : #Object,
	#instVars : [
		'classe',
		'classeDescription',
		'listeAttributs',
		'listeMethodes'
	],
	#category : #Documentation
}

{ #category : #setter }
Documentation >> classe: aClass [ 
	classe := aClass .
	self listeMethodes: aClass selectors.
	self listeAttributs: aClass instVarNames.
	self classeDescription: aClass organization classComment..
]

{ #category : #getter }
Documentation >> classeDescription [
	^classeDescription
]

{ #category : #accessing }
Documentation >> classeDescription: aString [ 
	classeDescription := aString
]

{ #category : #getter }
Documentation >> listeAttributs [
	^listeAttributs
]

{ #category : #accessing }
Documentation >> listeAttributs: aCollection [ 
	listeAttributs := aCollection
]

{ #category : #getter }
Documentation >> listeMethodes [
	^listeMethodes
]

{ #category : #accessing }
Documentation >> listeMethodes: aCollection [ 
	listeMethodes := aCollection
]
