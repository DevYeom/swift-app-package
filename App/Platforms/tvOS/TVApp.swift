#if os(tvOS)
import SwiftUI

@main
struct TVApp: App {
    var body: some Scene {
        WindowGroup {
            TVRootView()
        }
    }
}
#endif
