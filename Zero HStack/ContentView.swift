
import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Circle()
                .foregroundColor(.red)
                .frame(width: 150)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 200, height: 250)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension HStack {
    init(
        alignment: VerticalAlignment = .center,
        zeroSpacing: CGFloat = 0,
        @ViewBuilder content: () -> Content
    ) {
        self.init(alignment: alignment, spacing: zeroSpacing) {
            content()
        }
    }
}
