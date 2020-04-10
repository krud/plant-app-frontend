import SwiftUI

struct SignupView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var username: String = ""
    @State private var name: String = ""
    @State private var email: String = ""
     @State private var password: String = ""
    
    var body: some View {
            VStack{
                HStack{
                    Button(action: {self.viewRouter.currentPage = "landing"}) {
                        Text("< Back").foregroundColor(.newBlack).padding()
                    }
                    Spacer()
                }
//                    MainLogo().foregroundColor(.black)
                Spacer()
                Text("Sign Up").font(.custom("Luna", size: 44))
                Slogan()
                Spacer()
//                VStack{
//                    UsernameTextField(username: $username)
//                    NameTextField(name: $name)
//                    EmailTextField(email: $email)
//                    PasswordSecureField(password: $password)
//                }.padding()
                Button(action: submit) {
                    Text("Sign Up").customButton()
                }
                Spacer()
            }
        }
    
        func submit() {
            print("hit")
    //        loginViewModel.performLogin() // to be implement
//        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView().environmentObject(ViewRouter())
    }
}
