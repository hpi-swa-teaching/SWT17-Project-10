building
buildYAxisSelectionWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #getYAxis;
		getSelectionList: #isSelected:;
		setSelectionList: #chart:setSelected:;
		frame: (0@0.15 corner: 0.3@0.85);
		yourself