helper
createSeededRandom
	
	| data maximum minimum point pointCount |
	pointCount := 7.
	minimum := -60.
	maximum := 100.
	data := SWDataUnlabeled create.
	
	(1 to: pointCount) do: [:i | point := Array new: 2.
								point at: 1 put: (minimum to: maximum) atRandom.
								point at: 2 put: (minimum to: maximum) atRandom.
								data add: point].
	
	^ data