import SwiftUI

protocol TextTypeButton {
    var `default`: TextTypeButtonConfiguration { get }
}

protocol TextTypeButtonConfiguration {
    var backgroundColor: Color   { get }
    var foregroundColor: Color   { get }
    var cornerRadius:    CGFloat { get }
}

protocol TextTypeFontConfiguration {
    var Font: Font { get }
}

protocol TextTypeButtonLayout {
    var padding: EdgeInsets { get }
}
