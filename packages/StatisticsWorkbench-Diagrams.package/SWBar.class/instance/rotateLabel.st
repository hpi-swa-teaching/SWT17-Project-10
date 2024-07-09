geometry
rotateLabel

	| rotationAngle |
	rotationAngle := 3/2 * (Float pi).
	self isLabelHorizontal: false.
	self
		rotationMorph
		angle: rotationAngle;
		bottomLeft: self rotatedLabelPosition