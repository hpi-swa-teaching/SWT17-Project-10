event-handling
exportIMG: aDiagram
	
	| folderPath fileName filePath |
	folderPath := (FileList2 modalFolderSelector).
	folderPath ifNotNil: [
		fileName := UIManager default request: 'Enter file name' initialAnswer: 'diagram'.
		filePath := folderPath fullName , FileDirectory slash , fileName , '.png'.
		PNGReadWriter putForm: (aDiagram imageForm) onFileNamed: filePath]