testing
testEnrichWithMiscDataMultipleMiscColumns

	| data miscData |
	data := SWDataStub createSeeded7.
	miscData := Dictionary new.
	miscData add: ('Column1' -> #('miscColumnValue1')).
	miscData add: ('Column2' -> #('miscColumnValue5')).
	data enrichWith: miscData.
	
	self assert: (data first misc second = ('Column1' -> 'miscColumnValue1')).
	self assert: (data first misc first =  ('Column2' -> 'miscColumnValue5'))