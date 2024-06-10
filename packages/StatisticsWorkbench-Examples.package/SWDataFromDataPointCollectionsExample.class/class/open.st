instance creation
open
	
	^ (SWDiagram new visualize: self dataLabeled and: self dataUnlabeled with: SWBarChart and: SWLineChart) openInWindowLabeled: ''
