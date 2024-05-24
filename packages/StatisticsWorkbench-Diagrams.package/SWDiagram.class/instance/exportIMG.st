visualization
exportIMG
	
	| filePath fileName |
	filePath := (FileList2 modalFolderSelector) fullName.
	fileName := UIManager default request: 'Enter file name' initialAnswer: ''.
	filePath ifNotNil: [
		fileName ifNotNil: [
			PNGReadWriter putForm: (self imageForm) onFileNamed: (filePath , '\' , fileName , '.png').
		]
	]