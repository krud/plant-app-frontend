import SwiftUI

struct MainLogo: View {
    var body: some View {
        return Image("logo")
        .resizable()
        .aspectRatio(contentMode: ContentMode.fit)
        .frame(width: 94.0, height: 94.0)
        .padding(Edge.Set.bottom, 20)
    }
}

//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainLogo()
//    }
//}
