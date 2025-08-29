import SwiftUI

struct TabBarView: View {
    @Binding var currentScreen: TabItemModel

    var body: some View {
        TabView(selection: $currentScreen) {
            MainView().tag(TabItemModel.message)
            Text(currentScreen.title).tag(TabItemModel.tips)
            Text(currentScreen.title).tag(TabItemModel.list)
            Text(currentScreen.title).tag(TabItemModel.host)
        }
    }
}

#Preview {
    @Previewable @State var page: TabItemModel = .message
    TabBarView(currentScreen: $page)
}
