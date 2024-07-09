testing
testRescaleAfterRemoving

	| sliveValueBefore sliveValueAfter |
	sliveValueBefore := self pieChart pieSlices at: 1 value.
	self pieChart data removeArray: #(3 30).
	sliveValueAfter := self pieChart pieSlices at: 1 value.

	self assert: (sliveValueBefore ~= sliveValueAfter)