event-handling
onExportImageButtonClicked

	(self checkSelectionValidity)
		ifTrue: [self visualizeCharts do: [:each | self exportIMG: each]]