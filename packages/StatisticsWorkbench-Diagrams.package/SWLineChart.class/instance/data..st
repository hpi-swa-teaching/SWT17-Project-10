accessing
data: dataSet

	data removeDependent: self.
	data := dataSet.
	data 
		sort: [:x :y | x x < y x];
		addDependent: self.
	self dataName: dataSet dataName.
	self update;
    		applyDataColor;
		changed: self
