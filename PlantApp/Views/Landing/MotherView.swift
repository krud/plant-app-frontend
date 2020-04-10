import SwiftUI

struct MotherView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack{
//            if viewRouter.currentPage != "profile" {
//                Image("background")
//                Image("leaves")
//                    .opacity(0.85)
//            }
            VStack {
                if viewRouter.currentPage == "landing" {
                    LandingView()
                }
                if viewRouter.currentPage == "login" {
                    LoginView().transition(.scale)
                }
                if viewRouter.currentPage == "signup" {
                    SignupView().transition(.scale)
                }
                if viewRouter.currentPage == "profile" {
                    ProfileTabView()
                }
            }.background(Image("leaves 3"))

        }
    }
}

struct MotherView_Previews : PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
