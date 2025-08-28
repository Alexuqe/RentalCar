
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
    @State private var selectedTab: TabItemModel = .list
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ForEach(TabItemModel.allCases, id: \.self) { item in
                if selectedTab == item {
                    MainView()
                }
            }
        }
        
        TabBarView(selectedTab: $selectedTab)
        
    }
}


#Preview {
    TabScreen()
}
