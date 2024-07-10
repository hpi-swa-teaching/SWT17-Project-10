event-handling
exportIMG: aDiagram
	
	| folderPath fileName filePath window |
	folderPath := (FileList2 modalFolderSelector).
	folderPath ifNotNil: [
		fileName := UIManager default request: 'Enter file name' initialAnswer: 'diagram'.
		filePath := folderPath fullName , FileDirectory slash , fileName , '.png'.
		window := aDiagram openInWindowLabeled: ''.
		aDiagram exportButton hide.
		[PNGReadWriter putForm: (aDiagram imageForm) onFileNamed: filePath] on: Error do: [:error |
			error pass]].
	window delete