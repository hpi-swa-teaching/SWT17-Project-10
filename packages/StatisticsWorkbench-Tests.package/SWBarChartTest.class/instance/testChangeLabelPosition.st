testing
testChangeLabelPosition

	self diagram charts do: [:aChart | aChart hasBottomCaption: true].
	self diagram update.
	self assert: self diagram charts first bars first barLabelMorph isNil.
	self assert: self diagram charts first bars first bottomLabelMorph notNil.
	
	self diagram charts do: [:aChart | aChart hasBottomCaption: false].
	self diagram update.
	self assert: self diagram charts first bars first barLabelMorph notNil.
	self assert: self diagram charts first bars first bottomLabelMorph isNil