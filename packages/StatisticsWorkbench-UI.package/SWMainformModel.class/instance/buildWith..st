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
			self buildTextWith: aBuilder withAxis: 1.
			self buildTextWith: aBuilder withAxis: 2.
			self buildTextWith: aBuilder withAxis: 3.
			self buildTextWith: aBuilder withAxis: 4.
			self buildThemeSelectionWith: aBuilder.
		};
		yourself)