computing
powerOfTenForNumber: aNumber

	| powerOfTen digitCount |
	digitCount := self digitCount: aNumber.
	powerOfTen := 0.
	0 to: 7 do: [:i | (digitCount > (i * 3))
						ifTrue: [powerOfTen := i * 3]].

	^ powerOfTen