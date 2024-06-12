building
buildColumnsInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #setNamedColumns:;
		getText: #namedColumns;
		frame: (0.3 @ 0.75 corner: 1 @ 0.85);
		indicateUnacceptedChanges: false;
		yourself