building
buildXAxisInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #setXAxisValues:;
		getText: #xAxis;
		frame: (0.3@0.23 corner: 1@0.33);
		indicateUnacceptedChanges: false;
		yourself