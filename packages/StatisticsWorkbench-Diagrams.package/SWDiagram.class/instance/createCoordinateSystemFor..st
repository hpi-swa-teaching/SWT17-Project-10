visualization
createCoordinateSystemFor: aChart

	| coordinateSystem |
	(aChart needsCoordinateSystem and: [self hasCoordinateSystem not])
		ifTrue: [
			coordinateSystem := aChart requiredCoordinateSystem create.
			coordinateSystem diagram: self.
			self add: coordinateSystem].
	(aChart needsCoordinateSystem)
		ifTrue: [self coordinateSystem diagram: self]
		ifFalse: [self bounds: aChart bounds].