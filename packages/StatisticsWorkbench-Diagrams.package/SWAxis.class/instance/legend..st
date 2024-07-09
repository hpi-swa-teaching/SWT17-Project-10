accessing
legend: aText

	self hasLegend
		ifFalse: [
			self
				createLegend: aText;
				updateLegend]
		ifTrue: [self legend contents: aText]
