visualization
showMean

	| meanValue meanData |

	(self charts first supportsShowMean) 
		ifFalse: [Exception signal: 'This chart does not support showMean functionality.'].
	
	meanValue := self charts first data meanY.
	meanData := SWDataUnlabeled create.
	
	0 to: (self charts first data size) do: [:i | meanData add: (Array with: i with: meanValue)].
	self visualize: meanData with: SWLineChart create.

	^ meanData
