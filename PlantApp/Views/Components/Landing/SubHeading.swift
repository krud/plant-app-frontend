import SwiftUI

struct SubHeading: View {
    var body: some View {
        return Text("Sign Up").bold().font(.title).foregroundColor(.white)
    }
}

struct SubHeading_Previews: PreviewProvider {
    static var previews: some View {
        SubHeading()
    }
}
