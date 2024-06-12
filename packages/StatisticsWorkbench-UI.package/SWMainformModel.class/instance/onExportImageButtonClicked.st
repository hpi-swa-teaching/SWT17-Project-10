event-handling
onExportImageButtonClicked
	
	(self checkInputValidity)
		ifTrue: [self visualizeCharts do: [:each | self exportIMG: each]]