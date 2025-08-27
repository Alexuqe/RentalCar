
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
    @StateObject private var viewModel = TabBarViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                switch viewModel.selectedTab {
                case .message: MainView()
                case .trips: MainView()
                case .list: MainView()
                case .favorite: MainView()
                case .host: MainView()
                }
            }
            
            TabBarView(viewModel: viewModel)
            
        }
    }
}

#Preview {
    TabScreen()
}
