building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Statistics Workbench';
		extent: self defaultWindowExtent;
		children:{
			self buildChartSelectionWith: aBuilder.
			self buildCsvFileSelectionWith: aBuilder.
			self buildVisualizeButtonWith: aBuilder.
			self buildXAxisInputFieldWith: aBuilder.
			self buildYAxisInputFieldWith: aBuilder.
			self buildColumnsInputFieldWith: aBuilder.
			self buildExportPNGButtonWith: aBuilder.
			self buildAdvancedChartsButtonWith: aBuilder.
			self buildHeadlineWith: aBuilder withAxis: 1.
			self buildHeadlineWith: aBuilder withAxis: 2.
			self buildHeadlineWith: aBuilder withAxis: 3.
		};
		yourself)