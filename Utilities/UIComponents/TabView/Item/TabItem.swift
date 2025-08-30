import SwiftUI

struct TabItem: View {
    let item: TabItemModel
    let isSelected: Bool
    var animation: Namespace.ID
    
    var body: some View {
        VStack(spacing: 4) {
            ZStack {
                if isSelected {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 44, height: 44)
                        .shadow(color: .green.opacity(0.6), radius: 10, x: 0, y: 0)
                        .matchedGeometryEffect(id: "CircleAnimation", in: animation)
                }
                
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
            }
            .offset(y: isSelected ? -6 : 0)
            
            Text(item.title)
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(isSelected ? .clear : .white.opacity(0.7))
        }
        .frame(maxWidth: .infinity)
    }
}

