geometry
dynamicBarWidth

	| dynamicBarSize |
	dynamicBarSize := self coordinateSystem xAxis length / self data size / 2.
	(dynamicBarSize > self maxBarWidth) 
		ifTrue: [dynamicBarSize := self maxBarWidth].

	^ dynamicBarSize
