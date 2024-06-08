as yet unclassified
testIsNewFileChosenReturnsFalse

	| fileStream |
	
	fileStream := self createFileStreamNamed: 'File1.txt'.
	mainformModel stream: fileStream.
	mainformModel parseData.

	self assert: (mainformModel isNewFileChosen not)	