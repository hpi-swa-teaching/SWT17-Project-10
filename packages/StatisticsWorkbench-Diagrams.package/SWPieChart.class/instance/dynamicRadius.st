geometry
dynamicRadius

	^ ((diagram extent x - (keyWidth)) / self radiusScalingFactor) min: (diagram extent y / self radiusScalingFactor)