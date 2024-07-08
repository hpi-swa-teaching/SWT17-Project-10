visualization
updateDataNameMorph

	| maxWidth |

	self dataNameMorph position: self vertices last.
	maxWidth := self diagram right - self dataNameMorph left.
	self dataNameMorph extent: maxWidth truncated @ self dataNameMorph height.
