visualization
visualizeStacked: aSWDataCollection with: aSWChart

	| stack |
	stack := (Array new: (aSWDataCollection first size)) collect: [:a | 0].
	aSWDataCollection do: [:aData | aData doWithIndex: [:vector :index | stack at: index put: (vector y + (stack at: index)). vector at: 2 put: (stack at: index)]].
	aSWDataCollection reverseDo: [:swData | self visualize: swData with: aSWChart].
