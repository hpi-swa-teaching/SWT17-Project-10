event-handling
createDiagramFor: aChartString

	| diagram |
	diagram := SWDiagram new.
	aChartString caseOf: {
		['BarChart'] -> [diagram stacked: true].
		['AreaChart'] -> [diagram stacked: true].
		['Normalized BarChart'] -> [diagram stacked: true; normalized: true].
		['Normalized AreaChart'] -> [diagram stacked: true; normalized: true].
    } otherwise: [].

	^ diagram