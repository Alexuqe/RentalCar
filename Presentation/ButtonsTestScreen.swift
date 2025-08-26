import SwiftUI

struct ButtonsTestScreen: View {
    var body: some View {
        VStack(alignment: .leading) {
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
        .padding(.horizontal, 20)
    }
}

#Preview {
    ButtonsTestScreen()
}
