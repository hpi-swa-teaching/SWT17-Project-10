event-handling
getClassForChart: aChartString

	aChartString caseOf: {
		['BarChart'] -> [^ SWBarChart].
		['PieChart'] -> [^ SWPieChart].
		['LineChart'] -> [^ SWLineChart].
		['SpiderChart'] -> [^ SWSpiderChart].
		['ScatterPlot'] -> [^ SWScatterPlot].
    } otherwise: [^ SWBarChart].


