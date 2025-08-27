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
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.gray)

                Text(item.title)
                    .foregroundStyle(.gray)
                    .font(.system(size: 17))
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color.black)
    }
}

#Preview {
    @Previewable @State var page: TabItemModel = .message
    TabItem(pages: $page, item: .message)
}

