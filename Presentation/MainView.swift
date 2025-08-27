
import SwiftUI

struct MainView: View {

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                NavigationLink { ButtonsTestScreen() }
                label: {
                    Text("Buttons Screen")
                    .foregroundStyle(.white)
                    .padding(12)
                    .background(Color(hex: "32D34B"))
                }
                .clipShape(.buttonBorder)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
        }
    }
}

struct TabScreen: View {
    @State private var currentScreen: TabItemModel = .message
    
    init() {
        UITabBar.appearance().isHidden = true
    }

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
