building
buildTextWith: aBuilder withAxis: aNumber
    | windowContent layoutPosition |
    
    windowContent := layoutPosition := nil.
    
    aNumber caseOf: {
        [1] -> [windowContent := #buildXAxisLabel.
                layoutPosition := 0.3 @ 0.17 corner: 1 @ 0.25].
        [2] -> [windowContent := #buildYAxisLabel.
                layoutPosition := 0.3 @ 0.37 corner: 0.75 @ 0.25].
        [3] -> [windowContent := #buildColumnsLabel.
                layoutPosition := 0.3 @ 0.68 corner: 1 @ 0.25].
        [4] -> [windowContent := #buildThemeLabel.
                layoutPosition := 0 @ 0.82 corner: 1 @ 0.9].
    } otherwise: [
        windowContent := #buildXAxisLabel.
        layoutPosition := 0.3 @ 0.53 corner: 1 @ 0.15
    ].
    
    ^ aBuilder pluggablePanelSpec new 
        model: self;
        children: windowContent;
        frame: layoutPosition;
        yourself
