import SwiftUI

public struct ContentView: View {
    public init() { }

    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            #if os(iOS)
            Text("Hello, iOS!")
            #elseif os(macOS)
            Text("Hello, macOS!")
            #elseif os(tvOS)
            Text("Hello, tvOS!")
            #elseif os(visionOS)
            Text("Hello, visionOS!")
            #elseif os(watchOS)
            Text("Hello, watchOS!")
            #else
            Text("Hello, world!")
            #endif
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
