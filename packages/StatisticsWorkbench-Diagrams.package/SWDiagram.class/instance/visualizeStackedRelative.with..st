visualization
visualizeStackedRelative: aSWDataCollection with: aSWChartSubclass

	|chart stack|
	
	stack := (Array new: (aSWDataCollection first size)) collect: [:a | 0].
	aSWDataCollection do: [:aData | aData doWithIndex: [:vector :index | stack at: index put: (vector y + (stack at: index)).]].
	aSWDataCollection do: [:aData | aData doWithIndex: [:vector :index | vector at: 2 put: (100 * (vector y) / stack at: index)]].
	
	stack := (Array new: (aSWDataCollection first size)) collect: [:a | 0].
	aSWDataCollection do: [:aData | aData doWithIndex: [:vector :index | stack at: index put: (vector y + (stack at: index)). vector at: 2 put: (stack at: index)]].
	aSWDataCollection reverseDo: [:swData | 
		chart := aSWChartSubclass create.
		self visualizePercentages: swData with: chart].
