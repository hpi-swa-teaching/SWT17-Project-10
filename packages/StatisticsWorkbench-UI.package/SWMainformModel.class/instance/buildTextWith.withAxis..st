building
buildTextWith: aBuilder withAxis: aNumber
    | windowContent layoutPosition |
    
    windowContent := layoutPosition := nil.
    
    aNumber caseOf: {
        [1] -> [windowContent := #buildXAxisLabel.
                layoutPosition := 0.3@0.15 corner: 1@0.25].
        [2] -> [windowContent := #buildYAxisLabel.
                layoutPosition := 0.3@0.33 corner: 1@0.25].
        [3] -> [windowContent := #buildColumnsLabel.
                layoutPosition := 0.3@0.5 corner: 1@0.25].
        [4] -> [windowContent := #buildThemeLabel.
                layoutPosition := 0@0.62 corner: 1@0.65].
    } otherwise: [
        windowContent := #buildXAxisLabel.
        layoutPosition := 0.3@0.53 corner: 1@0.15
    ].
    
    ^ aBuilder pluggablePanelSpec new 
        model: self;
        children: windowContent;
        frame: layoutPosition;
        yourself
