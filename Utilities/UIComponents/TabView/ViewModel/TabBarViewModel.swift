import SwiftUI

final class TabBarViewModel: ObservableObject {
    @Published var selectedTab: TabItemModel = .list
}
