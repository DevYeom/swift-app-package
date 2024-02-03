#if os(macOS)
import AppPackage
import SwiftUI

struct MacRootView: View {
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
    MacRootView()
}
#endif
