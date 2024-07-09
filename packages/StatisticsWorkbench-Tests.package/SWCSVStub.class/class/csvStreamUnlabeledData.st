helper
csvStreamUnlabeledData
	
	| lines csvString |
	lines :={
		'Time;Value' .
		'0;1' .
		'1;1' .
		'2;3' .
		'3;1'
	}.
	csvString := lines inject: '' into: [:agg :current | agg, current, String cr].
	
	^ ReadStream on: csvString from: 1 to: csvString size.