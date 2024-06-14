yAxis-selection
editYAxisValues
	| t1 t3 |
	t3 := self yAxisSelection
				indexOf: true
				ifAbsent: [0].
	t3 = 0
		ifTrue: [self inform: 'Error: Please select one yAxis before!']
		ifFalse: [t3 := 1.
			yAxisSelection
				do: [:t4 | 
					t4
						ifTrue: [t1 := UIManager default
										request: 'Enter your y-Axis values (separated by ",")'
										initialAnswer: (self yAxis at: t3).
							t1 isEmpty
								ifFalse: [self yAxis at: t3 put: t1]].
					t3 := t3 + 1].
			self yAxisSelection: self defaultYAxisSelection.
			self changed: #getYAxis.
			self changed: #isYAxisSelected:.
			self changed: #yAxis:setSelected:]