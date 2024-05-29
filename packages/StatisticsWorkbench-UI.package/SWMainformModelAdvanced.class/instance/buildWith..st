building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Advanced Statistics Workbench';
		extent: self defaultWindowExtent;
		children:{
			self buildVisualizeButtonWith: aBuilder.
		};
		yourself)