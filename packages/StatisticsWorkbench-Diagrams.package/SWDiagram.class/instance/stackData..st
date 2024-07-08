toggling
stackData: aSWData
	
	| stack |
	stack:= (Array new: (aSWData first size)) collect: [:a | 0].
	aSWData do: [:aData |
		aData doWithIndex: [:vector :index |
			stack at: index put: (vector y + (stack at: index)).
			vector at: 2 put: (stack at: index)]]