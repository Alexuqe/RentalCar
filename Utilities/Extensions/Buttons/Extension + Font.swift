// MARK: Accent Button
extension ButtonFontConfiguration where Self == AccentButtonDefaultFontConfiguration {
    static var `default`: ButtonFontConfiguration { AccentButtonDefaultFontConfiguration() }
}

extension ButtonFontConfiguration where Self == AccentButtonMediumFontConfiguration {
    static var medium: ButtonFontConfiguration { AccentButtonMediumFontConfiguration() }
}

extension ButtonFontConfiguration where Self == AccentButtonSmallFontConfiguration {
    static var small: ButtonFontConfiguration { AccentButtonSmallFontConfiguration() }
}

//MARK: Text Button
extension ButtonFontConfiguration where Self == TextButtonDefaultFontConfiguration {
    static var defaultText: ButtonFontConfiguration { TextButtonDefaultFontConfiguration() }
}

extension ButtonFontConfiguration where Self == TextButtonSecondaryFontConfiguration {
    static var secondaryText: ButtonFontConfiguration { TextButtonSecondaryFontConfiguration() }
}

extension ButtonFontConfiguration where Self == TextButtonCaptureFontConfiguration {
    static var captureText: ButtonFontConfiguration { TextButtonCaptureFontConfiguration() }
}
