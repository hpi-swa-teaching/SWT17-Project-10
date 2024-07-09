event handling
doubleClick: anEvent

	| explorer |
	explorer := ToolBuilder build: (ObjectExplorer explore: self data).
	explorer openInHand