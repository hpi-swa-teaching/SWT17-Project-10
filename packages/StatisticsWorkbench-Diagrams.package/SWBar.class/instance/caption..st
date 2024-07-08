accessing
caption: aString
	
	self captionString: aString.
	(self hasBottomCaption)
		ifTrue: [self bottomCaption: aString.]
		ifFalse: [self topCaption: aString]