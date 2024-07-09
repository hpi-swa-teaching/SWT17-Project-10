visualization
exportIMG
	
	| folderPath fileName filePath |
	folderPath := (FileList2 modalFolderSelector).
	folderPath ifNotNil: [
		fileName := UIManager default request: 'Enter file name' initialAnswer: 'diagram'.
		filePath := folderPath fullName , FileDirectory slash , fileName , '.png'.
		self exportButton hide.
		[PNGReadWriter putForm: (self imageForm) onFileNamed: filePath] on: Error do: [:error |
			self exportButton show.
			error pass].
		self exportButton show]