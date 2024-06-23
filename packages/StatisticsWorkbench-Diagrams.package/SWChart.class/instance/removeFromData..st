updating
removeFromData: aChartElement

	self data remove: aChartElement vector.
	self diagram charts do: [:aChart | aChart data changed]