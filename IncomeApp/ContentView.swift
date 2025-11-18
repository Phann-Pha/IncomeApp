import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Get Started")
                .font(.system(size: 16, weight: .regular))
                .padding(10)
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
