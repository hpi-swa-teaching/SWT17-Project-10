building
buildHeadlineWith: aBuilder withAxis: aNumber
	
	| windowContent  layoutPosition|
	
	windowContent := aNumber caseOf: {
		[1] -> [#buildXAxisLabel].
		[2] -> [#buildYAxisLabel].
		[3] -> [#buildLabel]
	} otherwise: [#buildXAxisLabel].
	
	layoutPosition := aNumber caseOf: {
		[1] -> [0.3@0.15 corner: 1@0.25].	
		[2] -> [0.3@0.33 corner: 1@0.25].
		[3] -> [0.3@0.5 corner: 1@0.25].
	} otherwise: [0.3@0.53 corner: 1@0.25].
	
	^ aBuilder pluggablePanelSpec new 
		model: self;
		children: windowContent;
		frame: layoutPosition;
		yourself
	
	
	

