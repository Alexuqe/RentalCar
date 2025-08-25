import SwiftUI

struct TabItem: View {
    @Binding var pages: TabItemModel
    let item: TabItemModel

    var body: some View {
        Button {
            withAnimation { pages = item }
        }
        label: {
            VStack {
                Image(systemName: item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(
                        pages == item
                        ? .blue
                        : .gray
                    )

                Text(item.title)
                    .foregroundStyle(.gray)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    @Previewable @State var page: TabItemModel = .message
    TabItem(pages: $page, item: .message)
}

