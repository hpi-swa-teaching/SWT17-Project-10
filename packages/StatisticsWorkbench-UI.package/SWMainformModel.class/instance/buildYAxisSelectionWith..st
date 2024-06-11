building
buildYAxisSelectionWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #getYAxis;
		getSelectionList: #isYAxisSelected:;
		setSelectionList: #yAxis:setSelected:;
		frame: (0.3@0.45 corner: 1@0.68);
		yourself