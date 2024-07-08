accessing
switchColor
	
	| colorBuffer |
	colorBuffer := self previousColor.
	self previousColor: self color.
	self color: colorBuffer