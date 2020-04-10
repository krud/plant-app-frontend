import SwiftUI
    
struct LandingView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack{
            Spacer()
            Image("testing")
                .resizable()
                .frame(width:250, height:90)
            Slogan()
            Spacer()
            VStack{
                Button(action: {self.viewRouter.currentPage = "login"}) {
                    Text("Login").customButton()
                }
                Button(action: {self.viewRouter.currentPage = "signup"}) {
                    Text("Sign Up").foregroundColor(.darkGreen)
                }
            }
            Spacer()
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().environmentObject(ViewRouter())
    }
}
