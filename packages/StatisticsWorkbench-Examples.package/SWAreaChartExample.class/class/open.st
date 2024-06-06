as yet unclassified
open

	| data |
	
	data := SWDataUnlabeled fromXValues: {0 . 1 . 2 . 3 . 4 . 5} versusYValues: {-2 . 10 . 8 . -10 . 2 . 5}.
		
	^ (SWDiagram new visualize: data with: SWAreaChart create) openInWindow