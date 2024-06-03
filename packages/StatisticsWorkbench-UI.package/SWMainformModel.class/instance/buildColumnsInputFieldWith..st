building
buildColumnsInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #setNamedColumns:;
		getText: #namedColumns;
		frame: (0.3@0.58 corner: 1@0.7);
		indicateUnacceptedChanges: false;
		yourself