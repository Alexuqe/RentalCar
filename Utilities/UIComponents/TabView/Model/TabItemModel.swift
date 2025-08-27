enum TabItemModel: CaseIterable, Hashable {
    case message
    case trips
    case list
    case favorite
    case host

    var image: String {
        switch self {
            case .message:   "ChatIcon"
            case .trips:     "TripsIcon"
            case .list:      "MainIcon"
            case .favorite:  "FavoriteIcon"
            case .host:      "HostIcon"
        }
    }

    var title: String {
        switch self {
            case .message:  "Message"
            case .trips:    "Tips"
            case .list:     "List"
            case .favorite: "Favorite"
            case .host:     "Host"
        }
    }
}
