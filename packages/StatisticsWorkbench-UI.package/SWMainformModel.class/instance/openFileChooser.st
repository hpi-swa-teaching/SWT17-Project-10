csv-file
openFileChooser

	| fc |
	fc := FileChooser new.
	fc initializeAsDialogBox.
	self stream: fc open