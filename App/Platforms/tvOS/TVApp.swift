import AppCore
import AppUI
import SwiftUI

@main
struct TVApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    print(Hello.world())
                }
        }
    }
}
