import SwiftUI

extension Color {
    static let myOrange2 = Color("myOrange")
}

struct HomeView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var selection = 0
    
    var body: some View {
//        NavigationView {
//            navigationBarItems(leading: <#T##View#>)
//        }
        VStack{
            HStack{
                Image("testing")
                .resizable()
                .frame(width:150, height:50)
                Spacer()
                HStack{
                    Image(systemName: "plus.square.fill").scaleEffect(1.5).foregroundColor(.darkGreen).padding()
                }
            }.padding()
            
            Spacer()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id:\.self){ deviceName in
                HomeView().previewDevice(PreviewDevice(rawValue: deviceName))
        }.environmentObject(ViewRouter())
//        HomeView().environmentObject(ViewRouter())
    }
}
