adding/removing
deleteChart: aSWChart

	| chartType |
	chartType := aSWChart class.
	Transcript show: aSWChart originalData.
	self dataCollection remove: (aSWChart originalData).
	aSWChart delete.
	self charts do:[:aChart | aChart delete].
	self charts removeAll.
	self visualizeAll: (self dataCollection) with: (chartType).
	self update
