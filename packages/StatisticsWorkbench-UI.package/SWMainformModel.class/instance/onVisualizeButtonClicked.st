event-handling
onVisualizeButtonClicked

	| diagram |
	self chartsToVisualize isEmpty
		ifTrue: [self inform: 'Error: Please select some charts to visualize.']
		ifFalse: [
			self chartsToVisualize
				do: [:each | 
					diagram := SWDiagram new visualize: (self processInputDataFor: each) with: each.
					diagram applyColorTheme: (self selectedTheme) new.
					diagram openInWindow]]