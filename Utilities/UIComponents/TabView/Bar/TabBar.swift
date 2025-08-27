import SwiftUI

struct TabBar: View {
    @Binding var page: TabItemModel
    let bars: [TabItemModel]

    var body: some View {
        HStack {
            ForEach(bars, id: \.self) { bar in
                TabItem(item: bar, isSelected: false)
            }
        }
        .padding(.vertical, 21)
        .padding(.horizontal, 10)
        .background(.black)
    }
}

#Preview {
    @Previewable @State var page: TabItemModel = .message

    TabBar(page: $page, bars: TabItemModel.allCases)
}
