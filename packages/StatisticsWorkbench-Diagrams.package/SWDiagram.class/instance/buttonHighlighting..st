visualization
buttonHighlighting: aButton

	| highlight unhighlight |
	highlight := [aButton color: Color veryLightGray].
	unhighlight := [aButton color: Color white].
	aButton on: #mouseEnter send: #value to: highlight.
	aButton on: #mouseLeave send: #value to: unhighlight.