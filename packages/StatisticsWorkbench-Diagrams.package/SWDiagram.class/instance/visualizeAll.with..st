visualization
visualizeAll: aSWDataCollection with: aSWChart

	aSWDataCollection do: [:swData | self visualize: swData with: aSWChart].
