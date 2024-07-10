event-handling
onVisualizeButtonClicked

	(self checkSelectionValidity)
		ifTrue: [self visualizeCharts do: [:each | each openInWindowLabeled: '']]