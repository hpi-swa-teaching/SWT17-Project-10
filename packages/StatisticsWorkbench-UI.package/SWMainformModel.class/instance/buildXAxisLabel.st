building
buildXAxisLabel

	^ {TextMorph new
		contents: (Text string: 'Enter your x axis values' attribute: TextEmphasis bold);
	  	beAllFont: (StrikeFont familyName: #BitstreamVeraSans pointSize: 11);
        	color: Color black;
        	lock.}
	