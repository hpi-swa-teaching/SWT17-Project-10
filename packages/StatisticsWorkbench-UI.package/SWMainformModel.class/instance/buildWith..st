building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Statistics Workbench';
		extent: self defaultWindowExtent;
		children:{
			self buildExportPNGButtonWith: aBuilder.
			self buildCsvFileSelectionWith: aBuilder.
			self buildChartSelectionWith: aBuilder.
			self buildThemeSelectionWith: aBuilder.
			self buildVisualizeButtonWith: aBuilder.
			self buildTextWith: aBuilder withAxis: 1.
			self buildTextWith: aBuilder withAxis: 2.
			self buildTextWith: aBuilder withAxis: 3.
			self buildTextWith: aBuilder withAxis: 4.
			self buildXAxisInputFieldWith: aBuilder.
			self buildColumnsInputFieldWith: aBuilder.
			self buildYAxisSelectionWith: aBuilder.
			self buildChangeYAxisSelectionWith: aBuilder.
		};
		yourself)