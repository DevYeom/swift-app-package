#if os(iOS)
import AppPackage
import SwiftUI

struct PhoneRootView: View {
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
    PhoneRootView()
}
#endif
