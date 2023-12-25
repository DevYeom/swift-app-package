#if os(iOS)
import SwiftUI

@main
struct MobileApp: App {
    var body: some Scene {
        WindowGroup {
            switch UIDevice.current.userInterfaceIdiom {
            case .pad:
                PadRootView()
            case .phone:
                PhoneRootView()
            default:
                EmptyView()
            }
        }
    }
}
#endif
