building
buildXAxisInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #setXAxisValues:;
		getText: #xAxis;
		frame: (0.3@0.24 corner: 1@0.34);
		indicateUnacceptedChanges: false;
		yourself