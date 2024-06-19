as yet unclassified
dynamicMaxBubbleSize

	| dynamicSize |
	
	dynamicSize := self coordinateSystem xAxis length / self data size / 1.7.
	"(dynamicSize > self maxBarWidth) 
		ifTrue: [dynamicSize := self maxBarWidth]."

	^ dynamicSize
