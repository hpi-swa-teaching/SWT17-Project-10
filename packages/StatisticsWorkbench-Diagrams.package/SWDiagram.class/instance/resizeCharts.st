updating
resizeCharts 

	self charts do: [:chart | chart position: self layoutBounds topLeft].
	Transcript show: (self imageForm) extent; cr.