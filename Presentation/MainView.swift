
import SwiftUI

struct MainView: View {

    var body: some View {
        VStack {
            Text("main")
        }
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
