import SwiftUI

struct TabBarView: View {
    @Binding var selectedTab: TabItemModel
    
    var body: some View {
        ZStack {
            TabBarBackground(selectedTab: selectedTab)
                .fill(Color.black)
                .frame(height: 90)
                .shadow(radius: 5)
            
            HStack {
                ForEach(TabItemModel.allCases, id: \.self) { item in
                    Button {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
                            selectedTab = item
                        }
                    } label: {
                        TabItem(item: item, isSelected: selectedTab == item)
                    }
                }
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 20)
        }
    }
}

struct TabBarBackground: Shape {
    var selectedTab: TabItemModel
    
    var animatableData: CGFloat {
        get { CGFloat(indexForTab(selectedTab)) }
        set { }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width / CGFloat(TabItemModel.allCases.count)
        let index = CGFloat(indexForTab(selectedTab))
        let centerX = width * index + width / 2
        
        let curveHeight: CGFloat = 30
        
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: centerX - 40, y: 0))
        path.addQuadCurve(
            to: CGPoint(x: centerX + 40, y: 0),
            control: CGPoint(x: centerX, y: -curveHeight)
        )
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY))
        path.closeSubpath()
        
        return path
    }
    
    private func indexForTab(_ tab: TabItemModel) -> Int {
        TabItemModel.allCases.firstIndex(of: tab) ?? 0
    }
}
