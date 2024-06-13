updating
redrawChangedData

	self collectNewData.
	self charts do:[:aChart | aChart delete].
	self charts removeAll.
	self visualizeAll: (self dataCollection) with: SWBarChart.
	self update