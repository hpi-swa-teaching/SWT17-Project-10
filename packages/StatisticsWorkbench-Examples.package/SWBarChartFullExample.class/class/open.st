instance creation
open

	| diagram |
	
	diagram := SWDiagram new.
	diagram visualize: self data with: SWBarChart.
	diagram charts do: [:aChart | aChart hasBottomCaption: false].
	diagram update.
	
	^ diagram openInWindowLabeled: ''
