import AppCore
import AppUI
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Images.globe
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(Hello.world())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
