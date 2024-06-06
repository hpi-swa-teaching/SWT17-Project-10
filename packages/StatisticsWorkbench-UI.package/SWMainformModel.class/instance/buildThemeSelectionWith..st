building
buildThemeSelectionWith: aBuilder

    | light dark hpi themeSelectionPanel |

    light := aBuilder pluggableRadioButtonSpec new.
    light
        model: self;
        label: 'Light';
        frame: (0@0 corner: 0.33@1.0);
        state: #isLightSelected;
        action: [self selectedTheme: 'Light'].

    dark := aBuilder pluggableRadioButtonSpec new.
    dark
        model: self;
        label: 'Dark';
        frame: (0.33@0 corner: 0.66@1.0);
        state: #isDarkSelected;
        action: [self selectedTheme: 'Dark'].

    hpi := aBuilder pluggableRadioButtonSpec new.
    hpi
        model: self;
        label: 'HPI';
        frame: (0.66@0 corner: 1.0@1.0);
        state: #isHPISelected;
        action: [self selectedTheme: 'HPI'. light changed].

    themeSelectionPanel := aBuilder pluggablePanelSpec new.
    themeSelectionPanel
        children: {light. dark. hpi};
        frame: (0@0.7 corner: 0.3@0.85).

    ^ themeSelectionPanel yourself
