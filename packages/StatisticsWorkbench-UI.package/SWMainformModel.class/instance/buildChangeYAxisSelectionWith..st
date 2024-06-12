building
buildChangeYAxisSelectionWith: aBuilder

    
    ^aBuilder pluggablePanelSpec new
        children: {
            (aBuilder pluggableButtonSpec new
                model: self;
                label: 'Add';
 		    style: self cornerStyle;
                frame: (0 @ 0 corner: 0.33 @ 1.0);
                action: #addYAxisValues).
            (aBuilder pluggableButtonSpec new
                model: self;
                label: 'Edit';
	 	    style: self cornerStyle;
                frame: (0.33 @ 0 corner: 0.66 @ 1.0);
                action: #editYAxisValues).
            (aBuilder pluggableButtonSpec new
                model: self;
                label: 'Remove';
 		    style: self cornerStyle;
                frame: (0.66 @ 0 corner: 1.0 @ 1.0);
                action: #removeYAxisValues)
        };
        frame: (0.7 @ 0.37 corner: 1 @ 0.45);
        yourself
