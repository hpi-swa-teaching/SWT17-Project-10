as yet unclassified
updateCoordinateSystem
	| maximumx maximumy stepIntervalX|
	maximumx := 0.
	maximumy := 0.
	stepIntervalX:=1.
	self charts do: [:diagram| 	diagram dataset keysDo:
										[:x | maximumx<x ifTrue: [maximumx:=x]].
									diagram dataset valuesDo:
										[:y | maximumy<y ifTrue: [maximumy:=y]].
									diagram class defaultStepInterval>stepIntervalX ifTrue: 										[stepIntervalX:=diagram defaultStepInterval]].
								
	self xAxisMax: maximumx.
	self yAxisMax: maximumy.
	self xAxisStepInterval: stepIntervalX.