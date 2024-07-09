updating
medianEdgePoint

	| edgePointCount medianEdgePoint |
	edgePointCount := self edgePoints size.
	edgePointCount even
		ifTrue: [
			| leftMedianEdgePoint rightMedianEdgePoint |
			leftMedianEdgePoint := self edgePoints at: edgePointCount / 2 .
			rightMedianEdgePoint := self edgePoints at: edgePointCount / 2 + 1.
			medianEdgePoint := {leftMedianEdgePoint . rightMedianEdgePoint} average]
		ifFalse: [medianEdgePoint := self edgePoints at: (edgePointCount / 2 roundUpTo: 1)].
	
	^ medianEdgePoint