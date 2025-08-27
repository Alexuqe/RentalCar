import SwiftUI

struct TabItem: View {
    let item: TabItemModel
    let isSelected: Bool
    
    var body: some View {
        VStack(spacing: 4) {
            Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(10)
                .background(
                    Circle()
                        .fill(isSelected ? Color.green : Color.clear)
                        .shadow(color: isSelected ? .green.opacity(0.6) : .clear, radius: 10, x: 0, y: 0)
                )
                .offset(y: isSelected ? -5 : 0)
            
            Text(item.title)
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(isSelected ? .clear : .white.opacity(0.7))
        }
        .frame(maxWidth: .infinity)
        .background(.black)
    }
}

#Preview {
    @Previewable @State var page: TabItemModel = .message
    TabItem(item: .message, isSelected: false)
}

