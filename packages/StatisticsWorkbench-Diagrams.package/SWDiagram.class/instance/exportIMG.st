visualization
exportIMG
	
	| folderPath fileName filePath |
	folderPath := (FileList2 modalFolderSelector).
	folderPath ifNotNil: [
		fileName := UIManager default request: 'Enter file name' initialAnswer: ''.
		filePath := folderPath fullName , FileDirectory slash , fileName , '.png'.
		PNGReadWriter putForm: (self imageForm) onFileNamed: filePath.
	]