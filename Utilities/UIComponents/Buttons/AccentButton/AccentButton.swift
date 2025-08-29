import SwiftUI

struct AccentButton: View {
    private let text: String
    private let type: ButtonType
    private let layout: ButtonLayoutConfiguration
    private let font: ButtonFontConfiguration
    private let action: () -> Void

    init(
        text: String,
        type: ButtonType = .default,
        layout: ButtonLayoutConfiguration = .default,
        font: ButtonFontConfiguration = .default,
        action: @escaping () -> Void
    ) {
        self.text = text
        self.type = type
        self.layout = layout
        self.font = font
        self.action = action
    }

    var body: some View {
        Button { action() }
        label: {
            Text(text)
            .lineLimit(1)
            .font(font.Font)
            .padding(layout.padding)
            .frame(maxWidth: .infinity)
            .background(type.default.backgroundColor)
        }
        .clipShape(.rect(cornerRadius: layout.cornerRadius))
        .foregroundStyle(type.default.foregroundColor)
    }
}

#Preview {
    AccentButton(
        text: "Learn more",
        type: .default,
        layout: .small,
        font: .small,
        action: { }
    )
}
