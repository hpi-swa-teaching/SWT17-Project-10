calculation
calculateStandardDeviation: valuesCollection

	| sum mean |
	mean := self calculateMean: valuesCollection.
	sum := valuesCollection inject: 0 into: [:agg :current | agg + ((current - mean) squared)].

	^ (sum / valuesCollection size) sqrt