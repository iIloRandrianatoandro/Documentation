Class {
	#name : #TestDocumentation,
	#superclass : #TestCase,
	#category : #Documentation
}

{ #category : #tests }
TestDocumentation >> testDocumentationCreated [
	"tester creation de documentation de classe"
	|maDocumentation booleen1 booleen2 booleen3|
	maDocumentation := Documentation new.
	maDocumentation classe: ListeLineaireChainee .
	booleen1:= maDocumentation classeDescription = 'C est une classe creant une liste lineaire chainee composee de plusieurs cellules relies entre elles'.
	booleen2 := maDocumentation  listeAttributs = #(#idListe).
	booleen3 := maDocumentation  listeMethodes = #(#infoCellule: #idListe: #idListe #cellule:valeurInfo: #suivantCellule:).
	self assert: [ (booleen1 and: booleen2) and: booleen3 ]
]
