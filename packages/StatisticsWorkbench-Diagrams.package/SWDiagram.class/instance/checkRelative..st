visualization
checkRelative: aChart

	(self normalized)
		ifTrue: [
			aChart dataSuffix: '%'.
			self coordinateSystem percentageBased: true.
			self coordinateSystem yAxis markerSuffix: '%'].