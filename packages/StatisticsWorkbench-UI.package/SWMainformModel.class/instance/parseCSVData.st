csv-file
parseCSVData

	| csvReader namedColumns labelString xString yKeys delimiter escapeCharacter dialogParts |	
	"Dialog for delimiter and escape character"
    	dialogParts := (UIManager default request: 'Enter the delimiter and escape character separated by a space.', Character cr asString ,'Note: The X column must be labeled "X", Y columns must start with "Y", and the Label column (if present) must be labeled "Label".' initialAnswer: '; "').
	(dialogParts ~= '') ifTrue: [
		dialogParts := dialogParts findTokens: ' '.
	    	delimiter := dialogParts first.
	    	escapeCharacter := dialogParts second.
	    	
	    	csvReader := SWCSVReader newWith: delimiter first asCharacter and: escapeCharacter first asCharacter.
		namedColumns := csvReader getNamedColumns: self stream.
	
		"Convert Label values to a single string and set named columns if Label key exists"
	    	(namedColumns includesKey: #Label) ifTrue: [
	        	labelString := (namedColumns at: #Label) joinSeparatedBy: ', '.
	        	self setNamedColumns: labelString.
	        	self changed: #namedColumns].
	
		"Convert X values to a single string and set X axis values"
	    	(namedColumns includesKey: #X) ifTrue: [
	    		xString := (namedColumns at: #X) joinSeparatedBy: ', '.
	    		self setXAxisValues: xString.
	    		self changed: #xAxis.] ifFalse: [UIManager default inform: 'No data found for X axis.'].
	
	    	"Find all Y keys, convert their values to strings, and set Y axis values"
	    	yKeys := namedColumns keys select: [:key | key beginsWith: 'Y'].
		yKeys isEmpty ifTrue: [
	    		UIManager default inform: 'No data found for Y axis.'] ifFalse: [
	    		yKeys do: [:key |
	        		| yString |
	        		yString := (namedColumns at: key) joinSeparatedBy: ', '.
	        		self addYAxisValues: yString]]]