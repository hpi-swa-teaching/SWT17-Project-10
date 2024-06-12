as yet unclassified
testIsNewFileChosen

	| fileStream |

	fileStream := self createFileStreamNamed: 'File1.txt'.
	self
		mainformModel stream: fileStream;
		parseCSVData.
	
	fileStream := self createFileStreamNamed: 'File2.txt'.
	self mainformModel stream: fileStream.
	
	self assert: mainformModel isNewFileChosen	


	