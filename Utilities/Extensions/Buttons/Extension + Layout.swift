extension ButtonLayoutConfiguration where Self == AccentButtonDefaultLayout {
    static var `default`: ButtonLayoutConfiguration { AccentButtonDefaultLayout() }
}

extension ButtonLayoutConfiguration where Self == AccentButtonSmallLayout {
    static var small: ButtonLayoutConfiguration { AccentButtonSmallLayout() }
}

extension ButtonLayoutConfiguration where Self == AccentButtonMediumLayout {
    static var medium: ButtonLayoutConfiguration { AccentButtonMediumLayout() }
}
