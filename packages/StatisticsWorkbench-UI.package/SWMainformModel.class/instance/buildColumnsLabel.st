building
buildColumnsLabel

	^ {TextMorph new
	  contents: (Text string: 'Enter your named columns' attribute: TextEmphasis bold);
	  beAllFont: (StrikeFont familyName: #BitstreamVeraSans pointSize: 11);
        color: Color black;
        lock.}
	