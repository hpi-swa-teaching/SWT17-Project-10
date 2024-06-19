visualization
visualizeAll: aSWDataCollection with: aSWChartSubclass

	| stack stackedData reverseCollection reverseOriginalCollection|
	self dataCollection: aSWDataCollection deepCopy.
	stackedData := aSWDataCollection deepCopy.
	
	(self normalized)
		ifTrue: [
			stack := (Array new: (aSWDataCollection first size)) collect: [:a | 0].
			stackedData do: [:aData |
				aData doWithIndex: [:vector :index |
					stack at: index put: (vector y + (stack at: index))]].
			stackedData do: [:aData |
				aData doWithIndex: [:vector :index |
					vector at: 2 put: (100 * (vector y) / stack at: index)]]].
		
	Transcript show: stackedData; cr.
	
	(self stacked)
		ifTrue: [
			stack := (Array new: (stackedData first size)) collect: [:a | 0].
			stackedData do: [:aData | 
				aData doWithIndex: [:vector :index |
					stack at: index put: (vector y + (stack at: index)).
					vector at: 2 put: (stack at: index)]]].
		
	Transcript show: stackedData; cr.

	reverseCollection := stackedData reversed.
	reverseOriginalCollection := self dataCollection reversed.
	reverseCollection doWithIndex: [:swData :index |
		self visualize: swData original: (reverseOriginalCollection at: index) with: aSWChartSubclass].
