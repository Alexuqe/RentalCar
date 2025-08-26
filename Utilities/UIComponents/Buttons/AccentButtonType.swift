import SwiftUI

protocol TextTypeButton {
    var `default`: AccentButtonTypeConfiguration { get }
}

protocol AccentButtonTypeConfiguration {
    var backgroundColor: Color   { get }
    var foregroundColor: Color   { get }
    var cornerRadius:    CGFloat { get }
    var Font:            Font    { get }
}

protocol AccentButtonTypeLayout {
    var padding: EdgeInsets { get }
    var height : CGFloat    { get }
}
