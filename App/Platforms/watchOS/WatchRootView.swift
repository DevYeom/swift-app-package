#if os(watchOS)
import AppPackage
import SwiftUI

struct WatchRootView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(Hello.world())
        }
        .padding()
    }
}

#Preview {
    WatchRootView()
}
#endif
