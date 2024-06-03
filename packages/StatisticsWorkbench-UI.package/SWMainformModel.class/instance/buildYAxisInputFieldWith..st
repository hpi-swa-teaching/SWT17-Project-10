building
buildYAxisInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #setYAxisValues:;
		getText: #yAxis;
		frame: (0.3@0.4 corner: 1@0.5);
		indicateUnacceptedChanges: false;
		yourself