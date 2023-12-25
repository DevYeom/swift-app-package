#if os(visionOS)
import SwiftUI

@main
struct VisionApp: App {
    var body: some Scene {
        WindowGroup {
            VisionRootView()
        }
    }
}
#endif
