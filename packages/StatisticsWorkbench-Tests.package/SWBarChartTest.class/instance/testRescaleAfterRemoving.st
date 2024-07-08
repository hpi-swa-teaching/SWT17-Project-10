testing
testRescaleAfterRemoving

	| xScaleBefore xScaleAfter vector|
	
	vector := SWVector fromArray: #(3 1).
	vector labelName: 'four'.
	xScaleBefore := self diagram coordinateSystem xAxis maximum.
	self barChart data remove: vector.
	self barChart update.
	xScaleAfter := self diagram coordinateSystem xAxis maximum.
	self assert: (xScaleBefore ~= xScaleAfter)