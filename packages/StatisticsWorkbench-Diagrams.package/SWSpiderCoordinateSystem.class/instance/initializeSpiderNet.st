initialization
initializeSpiderNet

	| morph |
	morph := Morph new.
	morph color: Color transparent.
	
	self spiderNet: morph.
	self addMorph: self spiderNet