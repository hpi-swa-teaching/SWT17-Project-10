geometry
coordinateSystemPadding
	| tempX tempY paddingPercentage |

	paddingPercentage := 1 + 0.10.
	tempX := self coordinateSystem xAxis maximum.
	tempY := self coordinateSystem yAxis maximum.
	
	tempX := (tempX * paddingPercentage) ceiling.
	tempY := (tempY * paddingPercentage) ceiling.

	self coordinateSystem xAxis maximum: tempX.
	self coordinateSystem yAxis maximum: tempY