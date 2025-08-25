import SwiftUI

struct TabBar: View {
    @Binding var page: TabItemModel
    let bars: [TabItemModel]

    var body: some View {
        HStack {
            ForEach(bars, id: \.self) { bar in
                TabItem(pages: $page, item: bar)
            }
        }
        .padding(.vertical, 18)
        .padding(.horizontal, 16)
        .background(.gray.opacity(0.1))
    }
}

#Preview {
    @Previewable @State var page: TabItemModel = .message

    TabBar(page: $page, bars: TabItemModel.allCases)
}
