import AppCore
import AppUI
import SwiftUI

@main
struct VisionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    print(Hello.world())
                }
        }
    }
}
