csv-file
openFileChooser

	| fc fileStream |
	fc := FileChooser new.
	fc initializeAsDialogBox.
	fileStream := fc open.
	self stream: fileStream.
	self parseCSVData.