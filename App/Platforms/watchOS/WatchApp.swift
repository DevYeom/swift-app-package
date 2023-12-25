#if os(watchOS)
import SwiftUI
import SwiftData

@main
struct WatchApp: App {
    var body: some Scene {
        WindowGroup {
            WatchRootView()
        }
    }
}
#endif
