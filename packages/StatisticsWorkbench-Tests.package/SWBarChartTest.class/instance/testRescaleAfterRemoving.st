testing
testRescaleAfterRemoving

	| xScaleBefore xScaleAfter |
	
	xScaleBefore := self diagram coordinateSystem xAxis maximum.
	self barChart data removeArray: #(3 0).
	xScaleAfter := self diagram coordinateSystem xAxis maximum.
	self assert: (xScaleBefore ~= xScaleAfter)