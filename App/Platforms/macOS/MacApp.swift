#if os(macOS)
import SwiftUI

@main
struct MacApp: App {
    var body: some Scene {
        WindowGroup {
            MacRootView()
        }
    }
}
#endif
