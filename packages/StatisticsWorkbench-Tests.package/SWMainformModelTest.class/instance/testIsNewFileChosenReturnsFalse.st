testing
testIsNewFileChosenReturnsFalse

	"| fileStream |
	
	fileStream := self createFileStreamNamed: 'File1.txt'.
	mainformModel stream: fileStream.
	mainformModel parseCSVData.

	self assert: (mainformModel isNewFileChosen not)	"