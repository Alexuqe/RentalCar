
import SwiftUI

struct MainView: View {

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                buttonsScreen
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

private extension MainView {
    var buttonsScreen: some View {
        NavigationLink { ButtonsTestScreen() }
        label: {
            Text("Buttons Screen")
            .foregroundStyle(.white)
            .padding(12)
            .background(Color(hex: "32D34B"))
        }
        .clipShape(.buttonBorder)
    }
}

struct TabScreen: View {
    @State private var currentScreen: TabItemModel = .message

    var body: some View {
        TabBarView(currentScreen: $currentScreen)
        .safeAreaInset(edge: .bottom) {
            TabBar(
            page: $currentScreen,
            bars: TabItemModel.allCases)
        }
    }
}

#Preview {
    TabScreen()
}
