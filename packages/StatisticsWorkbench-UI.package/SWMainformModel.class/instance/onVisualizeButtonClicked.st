event-handling
onVisualizeButtonClicked

	self chartsToVisualize isEmpty
		ifTrue: [self inform: 'Error: Please select some charts to visualize.']
		ifFalse: [
			self chartsToVisualize
				do: [:each | (SWDiagram new visualize: (self processInputDataFor: each) with: each) openInWindow].]