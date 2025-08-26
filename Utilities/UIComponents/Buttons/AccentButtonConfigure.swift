import SwiftUI

// MARK: - Types

struct AccentButtonType: TextTypeButton {
    var `default`: TextTypeButtonConfiguration = AccentButtonDefaultConfiguration()
}


// MARK: - Configures

struct AccentButtonDefaultConfiguration: TextTypeButtonConfiguration {
    var backgroundColor: Color = Color(hex: "32D34B")
    var foregroundColor: Color = .white
    var cornerRadius: CGFloat  = 10
}


// MARK: - Font Configures

struct AccentButtonDefaultFontConfiguration: TextTypeFontConfiguration {
    var Font: Font = .system(size: 15, weight: .semibold)
}

struct AccentButtonSecondaryFontConfiguration: TextTypeFontConfiguration {
    var Font: Font = .system(size: 10, weight: .medium)
}


// MARK: - Layout Configures

struct AccentButtonDefaultLayout: TextTypeButtonLayout {
    var padding: EdgeInsets = EdgeInsets(top: 14, leading: 0, bottom: 14, trailing: 0)
    var height: CGFloat = 51
}

struct AccentButtonSmallLayout: TextTypeButtonLayout {
    var padding: EdgeInsets = EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10)
    var height: CGFloat = 23
}

struct AccentButtonMediumLayout: TextTypeButtonLayout {
    var padding: EdgeInsets = EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12)
    var height: CGFloat = 31
}

struct AccentButtonLargeLayout: TextTypeButtonLayout {
    var padding: EdgeInsets = EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12)
    var height: CGFloat = 31
}
