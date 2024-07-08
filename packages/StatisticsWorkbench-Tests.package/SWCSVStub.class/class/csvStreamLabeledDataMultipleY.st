helper
csvStreamLabeledDataMultipleY
	
	| lines csvString |
	
	lines :={
		'X;Y1;Y2;Y3;Y4;Label' .
		'0;1;4;5;3;one' .
		'1;1;2;9;4;two' .
		'2;3;8;5;9;three' .
		'3;1;7;6;2;four'
	}.
	csvString := lines inject: '' into: [:agg :current | agg, current, String cr].
	^ ReadStream on: csvString from: 1 to: csvString size
	
