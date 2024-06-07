building
buildThemeSelectionWith: aBuilder

    ^aBuilder pluggablePanelSpec new
        children: {
            (aBuilder pluggableRadioButtonSpec new
                model: self;
                label: 'Light';
                frame: (0@0 corner: 0.33@1.0);
                state: #isLightSelected;
                style: #menuButton;
                action: [self updateTheme: 'Light']).
            (aBuilder pluggableRadioButtonSpec new
                model: self;
                label: 'Dark';
                frame: (0.33@0 corner: 0.66@1.0);
                state: #isDarkSelected;
                style: #menuButton;
                action: [self updateTheme: 'Dark']).
            (aBuilder pluggableRadioButtonSpec new
                model: self;
                label: 'HPI';
                frame: (0.66@0 corner: 1.0@1.0);
                state: #isHPISelected;
                style: #menuButton;
                action: [self updateTheme: 'HPI'])
        };
        frame: (0@0.7 corner: 0.3@0.85);
        yourself
