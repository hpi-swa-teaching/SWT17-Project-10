accessing
originalData: aSWDataCollection
	
	originalData removeDependent: self.
	originalData := aSWDataCollection.
	originalData addDependent: self.
	self
		update;
		changed: self
