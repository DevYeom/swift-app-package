#if os(tvOS)
import AppPackage
import SwiftUI

struct TVRootView: View {
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
    TVRootView()
}
#endif
