accessing
data: dataSet
	
	data removeDependent: self.
	data := dataSet.
	data addDependent: self.
	self
		update;
		changed: self
