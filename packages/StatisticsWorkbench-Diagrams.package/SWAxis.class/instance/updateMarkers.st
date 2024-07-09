updating
updateMarkers
		
	self areMarkersDrawable
		ifTrue: [
			self
				adjustStepInterval;
				removeAllMarkers;
				drawMarkers]