instance creation
createLabel: aString

	| textMorph |
	textMorph := TextMorph new contents: aString;
					wrapFlag: true;
					color: self colorTheme spiderChartAxisTextColor;
					yourself.
	self spiderNet addMorph: textMorph.
	
	^ textMorph