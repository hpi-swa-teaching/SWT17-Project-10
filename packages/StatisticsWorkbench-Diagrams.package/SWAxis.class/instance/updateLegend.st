updating
updateLegend

	| maxWidth |
	self hasLegend
		ifTrue: [
			self legend bottomLeft: self endPoint.
			maxWidth := self owner diagram right - self legend left.
			self legend width: maxWidth]
