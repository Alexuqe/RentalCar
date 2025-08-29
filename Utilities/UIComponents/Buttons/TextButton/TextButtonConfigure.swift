import SwiftUI

// MARK: Button Type
struct TextButtonType: TextTypeButton {
    var primary:   ButtonColorConfiguration = TextButtonDefaultConfiguration()
    var secondary: ButtonColorConfiguration = TextButtonSecondaryConfiguration()
    var capture:   ButtonColorConfiguration = TextButtonCaptureConfiguration()
}

// MARK: Button Types Enum
enum TextButtonTypes {
    case primary
    case secondary
    case capture
}


// MARK: Button Configure
struct TextButtonDefaultConfiguration: ButtonColorConfiguration {
    var backgroundColor: Color = .clear
    var foregroundColor: Color = Color(hex: "32D34B")
}

struct TextButtonSecondaryConfiguration: ButtonColorConfiguration {
    var backgroundColor: Color = .clear
    var foregroundColor: Color = Color(hex: "131313")
}

struct TextButtonCaptureConfiguration: ButtonColorConfiguration {
    var backgroundColor: Color = .clear
    var foregroundColor: Color = Color(hex: "131313").opacity(0.5)
}



// MARK: Button Font
struct TextButtonDefaultFontConfiguration: ButtonFontConfiguration {
    var Font: Font = .system(size: 13, weight: .medium)
}

struct TextButtonSecondaryFontConfiguration: ButtonFontConfiguration {
    var Font: Font = .system(size: 12, weight: .semibold)
}

struct TextButtonCaptureFontConfiguration: ButtonFontConfiguration {
    var Font: Font = .system(size: 13, weight: .regular)
}
