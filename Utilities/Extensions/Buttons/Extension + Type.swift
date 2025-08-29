// MARK: Accent Button
extension ButtonType where Self == AccentButtonType {
    static var `default`: ButtonType { AccentButtonType() }
}


// MARK: Text Button
extension TextTypeButton where Self == TextButtonType {
    static var primary:   TextTypeButton { TextButtonType() }
    static var secondary: TextTypeButton { TextButtonType() }
    static var capture:   TextTypeButton { TextButtonType() }
}
