geometry
dynamicRadius

	^ ((diagram extent x - (2 * keyWidth)) / self radiusScalingFactor) min: (diagram extent y / self radiusScalingFactor)