building
buildThemeLabel

	^ {TextMorph new
		contents: (Text string: 'Select your Theme' attribute: TextEmphasis bold);
	  	beAllFont: (StrikeFont familyName: #BitstreamVeraSans pointSize: 11);
        	color: Color black;
        	lock.}
	