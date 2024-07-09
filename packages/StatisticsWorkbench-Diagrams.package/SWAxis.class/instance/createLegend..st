creation
createLegend: aText

	| morph |
	morph := TextMorph new contents: aText;
					wrapFlag: true;
					color: self color;
					yourself.
	legend := morph.
	
	self addMorph: morph