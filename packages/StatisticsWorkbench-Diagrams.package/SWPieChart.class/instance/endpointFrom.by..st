geometry
endpointFrom: startPoint by: aValue

	^ startPoint rotateBy: (self computeRadianFrom: aValue) about: self center
