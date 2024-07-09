helper
createSeededXYZ

	| dataCollection |
	dataCollection := OrderedCollection new.
	dataCollection add: (SWDataUnlabeled fromXValues: {(1.5) . (2.5) . 3 . 4 . 5} versusYValues: {22 . 110 . 64 . 211 . 35} versusZValues: {9 . 20 . 3 . 7 . 12}).
	dataCollection add: (SWDataUnlabeled fromXValues: {1 . 2 . 3 . 4 . 5} versusYValues: {5 . 200 . 38 . 69 . 16} versusZValues: {17 . 14 . 5 . 8 . 3}).
	dataCollection add: (SWDataUnlabeled fromXValues: {1 . 2 . 3 . 4 . 5} versusYValues: {210 . 53 . 180 . 83 . 27} versusZValues: {6 . 3 . 9 . 7 . 11}).
	
	^ dataCollection