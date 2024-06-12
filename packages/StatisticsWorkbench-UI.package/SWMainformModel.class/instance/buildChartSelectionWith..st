building
buildChartSelectionWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #getAllCharts;
		getSelectionList: #isSelected:;
		setSelectionList: #chart:setSelected:;
		frame: (0@0.15 corner: 0.3@0.8);
		yourself