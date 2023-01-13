import SwiftUI
import LiveViewNative

struct MyRegistry: CustomRegistry {
    enum TagName: String {
        case catRating = "cat-rating"
    }
    typealias ModifierType = EmptyRegistry.None
    
    static func lookup(_ name: TagName, element: ElementNode, context: LiveContext<MyRegistry>) -> some View {
        switch name {
        case .catRating:
            CatRatingView(context: context)
        }
    }
}
