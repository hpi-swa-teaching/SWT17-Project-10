as yet unclassified
open

	| data |
	
	data := SWDataUnlabeled fromXValues: {0 . 1 . 2 . 3 . 4 . 5 . 6 . 7 . 8 . 9 . 10 . 11 . 12 . 13 . 14 . 15 . 16 . 17 . 18 . 19 . 20 . 21 . 22 . 23 . 24 . 25} versusYValues: {2 . 10 . 8 . 10 . 2 . 5 . 2 . 10 . 8 . 10 . 2 . 2 . 10 . 8 . 10 . 2 . 2 . 10 . 8 . 10 . 2 . 10 . 8 . 10 . 2 . 7}.
		
	^ (SWDiagram new visualize: data with: SWAreaChart create) openInWindow