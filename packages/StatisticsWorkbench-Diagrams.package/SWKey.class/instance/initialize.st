as yet unclassified
initialize 

	super initialize.
	
	self 
		key: RectangleMorph new;
		keyColors: OrderedCollection new;
		keyNames: OrderedCollection new;
		color: Color transparent;
		textColor: Color black.
	
	self addMorph: self key.
	self keyBackgroundColor: self class defaultKeyBackgroundColor.
	self key color: self keyBackgroundColor