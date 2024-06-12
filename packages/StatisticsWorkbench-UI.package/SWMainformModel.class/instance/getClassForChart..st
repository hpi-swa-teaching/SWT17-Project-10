event-handling
getClassForChart: aChartString

	aChartString caseOf: {
		['PieChart'] -> [^ SWPieChart].
		['BarChart'] -> [^ SWBarChart].
		['LineChart'] -> [^ SWLineChart].
		['AreaChart'] -> [^ SWAreaChart].
		['ScatterPlot'] -> [^ SWScatterPlot].
		['SpiderChart'] -> [^ SWSpiderChart].
		['Normalized BarChart'] -> [^ SWBarChart].
		['Normalized AreaChart'] -> [^ SWAreaChart].
    } otherwise: [^ SWBarChart].


