event-handling
onVisualizeButtonClicked

	(self checkInputValidity)
		ifTrue: [self visualizeCharts do: [:each | each openInWindowLabeled: '']]