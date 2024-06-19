visualization
createIMGExportBtn

	| button icon titleBarHeight |
	(self exportButton) ifNil: [
		titleBarHeight := self getTitleBarHeight.
		button := SimpleButtonMorph new.
		button
			label: '';
			color: Color white;
			extent: (1.8 * titleBarHeight) @ (0.8 * titleBarHeight);
			target: self;
			actionSelector: #exportIMG;
			position: self position + (2 * titleBarHeight @ 0 - titleBarHeight);
			cornerStyle: #rounded;
			borderWidth: 0.1 * titleBarHeight.
		icon := self loadExportIconFor: button.
		icon position: button position + (button extent - icon extent // 2).
		button addMorph: icon.
		self 
			buttonHighlighting: button;
			exportButton: button;
			addMorph: button]