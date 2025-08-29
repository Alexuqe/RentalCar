import SwiftUI

struct ButtonsTestScreen: View {
    var body: some View {
        VStack(alignment: .leading) {
            accentButtons
            Divider().padding(.vertical)
            textButtons
        }
        .padding(.horizontal, 20)
    }
}

private extension ButtonsTestScreen {
    private var accentButtons: some  View {
        Group {
            AccentButton(text: "Save") { print("Save") }

            AccentButton(text: "Book Now") { print("Book Now") }
            .frame(maxWidth: 195)

            AccentButton(
                text: "Host & Earn",
                type: .default,
                layout: .medium,
                font: .medium
            ) {
                print("Host & Earn")
            }
            .frame(maxWidth: 91)

            AccentButton(
                text: "Learn more",
                type: .default,
                layout: .small,
                font: .small
            ) {
                print("Learn more")
            }
            .frame(maxWidth: 80)
        }
    }
}

private extension ButtonsTestScreen {
    private var textButtons: some View {
        Group {
            TextButton(
                image: "plus",
                text: "Add New Car",
                type: .primary,
                types: .primary,
                font: .defaultText,
                action: {}
            )

            TextButton(
                text: "Resend Code",
                type: .secondary,
                types: .secondary,
                font: .secondaryText,
                action: {}
            )

            TextButton(
                text: "View All",
                type: .capture,
                types: .capture,
                font: .captureText,
                action: {}
            )
        }
    }
}

#Preview {
    ButtonsTestScreen()
}
