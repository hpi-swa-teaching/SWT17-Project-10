visualization
drawGraph
	
	| polygonMorph |
	self createVertices do: [:vertices | 
		polygonMorph := PolygonMorph new.
		polygonMorph vertices: vertices
					     color: self graphColor 
					     borderWidth: self class defaultGraphBorderWidth 
					     borderColor: self graphBorderColor.
		self
			addMorph: polygonMorph;
			graph: polygonMorph]