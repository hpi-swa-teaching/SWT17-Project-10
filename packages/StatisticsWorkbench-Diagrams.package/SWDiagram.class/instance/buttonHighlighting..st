visualization
buttonHighlighting: aButton

	| highlight unhighlight |
	highlight := [aButton color: Color veryVeryLightGray].
	unhighlight := [aButton color: Color white].
	aButton on: #mouseEnter send: #value to: highlight.
	aButton on: #mouseLeave send: #value to: unhighlight.