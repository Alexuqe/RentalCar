import SwiftUI

struct TabBar: View {
    @Binding var page: TabItemModel
    let bars: [TabItemModel]

    var body: some View {
        ZStack {
            Rectangle()
                .background(.black)
            
            HStack {
                ForEach(bars, id: \.self) { bar in
                    TabItem(item: bar, isSelected: false)
                }
            }
            .padding(.vertical, 40)
            .padding(.horizontal, 12)
        }
        
     
    }
}

#Preview {
    @Previewable @State var page: TabItemModel = .message

    TabBar(page: $page, bars: TabItemModel.allCases)
}
