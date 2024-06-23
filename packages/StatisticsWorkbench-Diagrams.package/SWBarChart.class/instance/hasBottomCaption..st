accessing
hasBottomCaption: aBool

	hasBottomCaption := aBool.
	self bars do: [:aBar | aBar hasBottomCaption: aBool]
