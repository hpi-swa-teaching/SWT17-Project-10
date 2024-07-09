adding/removing
addVector: aSWVector

	(self isEmpty)
		ifTrue: [
			self dimensions: aSWVector dimensions.
			self dimensionNames: (Array new: self dimensions).
			self initializeDimensionNamesOfSize: self dimensions].
	(self dimensions = aSWVector dimensions)
		ifFalse: [SWInvalidDimensionError signal: 'Dimension of Data and size of provided array of names are not equal.'].
	super add: aSWVector.
	aSWVector addDependent: self.
	self changed