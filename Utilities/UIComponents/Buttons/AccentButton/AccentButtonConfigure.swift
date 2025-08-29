import SwiftUI

// MARK: Button Type
struct AccentButtonType: ButtonType {
    var `default`: ButtonColorConfiguration = AccentButtonDefaultConfiguration()
}



// MARK: Button Configure
struct AccentButtonDefaultConfiguration: ButtonColorConfiguration {
    var backgroundColor: Color = Color(hex: "32D34B")
    var foregroundColor: Color = .white
}



// MARK: Button Font
struct AccentButtonDefaultFontConfiguration: ButtonFontConfiguration {
    var Font: Font = .system(size: 15, weight: .semibold)
}

struct AccentButtonMediumFontConfiguration: ButtonFontConfiguration {
    var Font: Font = .system(size: 12, weight: .semibold)
}

struct AccentButtonSmallFontConfiguration: ButtonFontConfiguration {
    var Font: Font = .system(size: 10, weight: .medium)
}



// MARK: Button Layout
struct AccentButtonDefaultLayout: ButtonLayoutConfiguration {
    var padding: EdgeInsets = EdgeInsets(top: 14, leading: 0, bottom: 14, trailing: 0)
    var cornerRadius: CGFloat = 10
    var height: CGFloat = 51
}

struct AccentButtonSmallLayout: ButtonLayoutConfiguration {
    var padding: EdgeInsets = EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10)
    var cornerRadius: CGFloat = 10
    var height: CGFloat = 23
}

struct AccentButtonMediumLayout: ButtonLayoutConfiguration {
    var padding: EdgeInsets = EdgeInsets(top: 6, leading: 0, bottom: 6, trailing: 0)
    var cornerRadius: CGFloat = 10
    var height: CGFloat = 31
}
