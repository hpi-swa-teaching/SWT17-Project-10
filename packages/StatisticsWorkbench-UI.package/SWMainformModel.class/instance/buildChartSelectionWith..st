building
buildChartSelectionWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #getCharts;
		getSelectionList: #isSelected:;
		setSelectionList: #chart:setSelected:;
		frame: (0@0.15 corner: 0.3@0.6);
		yourself