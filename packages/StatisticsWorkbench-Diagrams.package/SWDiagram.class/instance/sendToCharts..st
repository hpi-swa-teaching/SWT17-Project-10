accessing
sendToCharts: aValue

	| newValueString |	
	self charts do: [:aChart | aChart receiveValue: aValue].
	newValueString := (aValue roundTo: 0.01) asString.
	newValueString := newValueString copyFrom: 1 to:(newValueString size min: 4).
	self sliderValueMorph contents: (Text fromString: newValueString)
	