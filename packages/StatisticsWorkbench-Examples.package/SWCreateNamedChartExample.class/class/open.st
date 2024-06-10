instance creation
open

	^ (SWDiagram new visualize: self data with: SWPieChart) openInWindowLabeled: 'This is a Pie Chart'
