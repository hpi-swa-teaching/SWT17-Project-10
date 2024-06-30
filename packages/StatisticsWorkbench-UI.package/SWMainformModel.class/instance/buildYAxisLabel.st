building
buildYAxisLabel

	^ {TextMorph new
		contents: (Text string: 'Enter your y axis values' attribute: TextEmphasis bold);
		beAllFont: (StrikeFont familyName: #BitstreamVeraSans pointSize: 11);
		color: Color black;
		lock.}

	