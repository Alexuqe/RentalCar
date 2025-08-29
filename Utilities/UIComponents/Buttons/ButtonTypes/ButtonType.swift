import SwiftUI

protocol ButtonType {
    var `default`: ButtonColorConfiguration { get }
}

protocol TextTypeButton {
    var primary:   ButtonColorConfiguration { get }
    var secondary: ButtonColorConfiguration { get }
    var capture:   ButtonColorConfiguration { get }
}

protocol ButtonColorConfiguration {
    var backgroundColor: Color   { get }
    var foregroundColor: Color   { get }
}

protocol ButtonFontConfiguration {
    var Font: Font { get }
}

protocol ButtonLayoutConfiguration {
    var padding:      EdgeInsets { get }
    var cornerRadius: CGFloat    { get }
    var height:       CGFloat    { get }
}
