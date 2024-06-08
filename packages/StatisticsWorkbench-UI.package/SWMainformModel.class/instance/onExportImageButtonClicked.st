event-handling
onExportImageButtonClicked
	
	self chartsToVisualize isEmpty
		ifTrue: [self inform: 'Error: Please select some charts to export.']
		ifFalse: [
			self chartsToVisualize
				do: [:each | self exportIMG: (SWDiagram new visualize: (self processInputDataFor: each) with: each)].].