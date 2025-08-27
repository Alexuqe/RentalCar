extension TextTypeButtonLayout where Self == AccentButtonDefaultLayout {
    static var `default`: TextTypeButtonLayout { AccentButtonDefaultLayout() }
}

extension TextTypeButtonLayout where Self == AccentButtonSmallLayout {
    static var small: TextTypeButtonLayout { AccentButtonSmallLayout() }
}

extension TextTypeButtonLayout where Self == AccentButtonMediumLayout {
    static var medium: TextTypeButtonLayout { AccentButtonMediumLayout() }
}
