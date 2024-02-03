#if os(visionOS)
import AppPackage
import SwiftUI

struct VisionRootView: View {
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
    VisionRootView()
}
#endif
