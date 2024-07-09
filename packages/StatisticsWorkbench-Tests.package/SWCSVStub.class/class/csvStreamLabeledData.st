helper
csvStreamLabeledData
	
	| lines csvString |
	lines :={
		'X;Y;Label' .
		'0;1;one' .
		'1;1;two' .
		'2;3;three' .
		'3;1;four'
	}.
	csvString := lines inject: '' into: [:agg :current | agg, current, String cr].
	
	^ ReadStream on: csvString from: 1 to: csvString size
	
