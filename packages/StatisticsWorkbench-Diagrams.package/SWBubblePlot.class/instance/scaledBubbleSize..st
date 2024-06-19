as yet unclassified
scaledBubbleSize: aSize

	^ (aSize) / (self diagram globalMaximum: #z) * (self dynamicMaxBubbleSize)