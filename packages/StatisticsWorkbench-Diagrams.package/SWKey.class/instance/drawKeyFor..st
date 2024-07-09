accessing
drawKeyFor: aLabelColorCollection
	
	| positionFactor |
	positionFactor := self class defaultKeyPositionFactor.
	
	"self key topLeft: aDiagram topRight."
	aLabelColorCollection do: [: association |	self 
									drawKeyPointOf: association key at: positionFactor;
									drawColorSwatchOf: association value at: positionFactor.
									positionFactor := positionFactor + 1].
	
	self key extent: (self computeKeyExtent: aLabelColorCollection)