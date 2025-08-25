enum TabItemModel: CaseIterable, Hashable {
    case message
    case tips
    case list
    case favorite
    case host

    var image: String {
        switch self {
            case .message:   "message.fill"
            case .tips:      "list.clipboard.fill"
            case .list:      "leaf.fill"
            case .favorite:  "message.fill"
            case .host:      "person.fill"
        }
    }

    var title: String {
        switch self {
            case .message:  "Message"
            case .tips:     "Tips"
            case .list:     "Leaf"
            case .favorite: "Чат"
            case .host:     "Профиль"
        }
    }
}
