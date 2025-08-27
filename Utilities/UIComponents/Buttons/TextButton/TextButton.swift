import SwiftUI

struct TextButton: View {
    private let image: String?
    private let text: String
    private let type: TextTypeButton
    private let types: TextButtonTypes
    private let font: ButtonFontConfiguration
    private let action: () -> Void

    init(
        image: String? = nil,
        text: String,
        type: TextTypeButton,
        types: TextButtonTypes,
        font: ButtonFontConfiguration,
        action: @escaping () -> Void
    ) {
        self.image = image
        self.text = text
        self.type = type
        self.types = types
        self.font = font
        self.action = action
    }

    var body: some View {
        Button { action() }
        label: {
            HStack {
                icon
                title
            }
        }
        .foregroundStyle(stateConfig.foregroundColor)
    }
}

private extension TextButton {
    private var stateConfig: ButtonColorConfiguration {
        switch types {
        case .primary: return type.primary
        case .secondary: return type.secondary
        case .capture: return type.capture
        }
    }
}

private extension TextButton {
    @ViewBuilder private var icon: some View {
        if let wrapImage = image {
            Image(systemName: wrapImage)
            .resizable()
            .scaledToFit()
            .frame(width: 6, height: 6)
        }
    }

    private var title: some View {
        Text(text)
        .font(font.Font)
        .lineLimit(1)
        .padding(2)
    }
}

#Preview {
    TextButton(
        image: "",
        text: "Add New Car",
        type: .secondary,
        types: .secondary,
        font: .captureText,
        action: {
        })
}
