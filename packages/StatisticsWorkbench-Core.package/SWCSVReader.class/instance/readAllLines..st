reading
readAllLines: aStream 
	
	| lines currentLine |
	lines := OrderedCollection new.
	currentLine := aStream nextLine.
	[currentLine] whileNotNil: [
		lines add: currentLine.
		currentLine := aStream nextLine].
	
	^ lines