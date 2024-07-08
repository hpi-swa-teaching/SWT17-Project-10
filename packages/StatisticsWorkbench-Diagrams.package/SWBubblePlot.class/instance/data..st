as yet unclassified
data: dataSet
	
	data removeDependent: self.
	data := dataSet.
	data addDependent: self.
	self threshold: (data maximum: #z).
	self
		update;
		changed: self
