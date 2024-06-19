geometry
dynamicRadius

	^ (diagram extent x / self radiusScalingFactor) min: (diagram extent y / self radiusScalingFactor)