import SwiftUI
//import Combine
//
//class HTTPAuth: BindableObject {
//    var didChange = PassthroughSubject<HTTPAuth, Never()>
//
//    var authenticated = false {
//        didSet {
//            didSet.send(self)
//        }
//    }
//
//    func checkDetails(username: String, password: String){
//        guard let url = URL(string: "http://localhost:8080/login") else { return }
//
//        let body: [String: String] = ["username": username, "password": password]
//
//        let finalBody = try JSONSerialization.data(withJSONObject: body)
//
//        var request = URLRequest(url:url)
//        request.httpMethod = "POST"
//        request.httpBody = finalBody
//        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        let dataTask = URLSession.shared.dataTask(with: urlRequest) {(data, response, error) in
//            print(data)
//        }.resume()
//    }
//}

struct LoginView: View {
    @EnvironmentObject var viewRouter: ViewRouter
//    var manager = HTTPAuth
//    @EnvironmentObject var loginViewModel: LoginViewModel
//    @State var counter: Int = 0
//    @Binding var signInSuccess: Bool
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @State private var authenticationDidFail: Bool = false
    @State private var authenticationDidSucceed: Bool = false
    
    let storedUsername = "Mgk"
    let storedPassword = "123"
    
    var body: some View {
            VStack{
                HStack{
                    Button(action: {self.viewRouter.currentPage = "landing"}) {
                        Text("< Back").foregroundColor(.newBlack).padding()
                    }
                    Spacer()
                }
                Spacer()
                Text("Login").font(.custom("Luna", size: 44))
                Slogan().padding()
                Spacer()
                VStack{
                    UsernameTextField(username: $username)
                    PasswordSecureField(password: $password)
                    if authenticationDidFail {
                        Text("Invalid credentials")
                        .padding()
                        .foregroundColor(.red)
                    }
                    Text("Forgot Password?").foregroundColor(.white).offset(x: 80).padding(.bottom, 30)
                    Button(action: submit) {
                        Text("Login").customButton()
                    }
                    if authenticationDidSucceed {
                        Text("Login succeeded!")
                            .font(.headline)
                            .frame(width: 250, height: 80)
                            .background(Color.green)
                            .cornerRadius(20.0)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
        }
                
    }
    
    func submit() {
//        UserModel.performLogin()
//        APIRequest.checkDetails(username: self.username, password: self.password)
//        self.manager.checkDetails(username: self.username, password: self.password)
        
        if self.username == self.storedUsername && self.password == self.storedPassword {
            self.authenticationDidSucceed = true
            self.viewRouter.currentPage = "profile"
            self.authenticationDidFail = false
        } else {
            self.authenticationDidFail = true
        }
//        loginViewModel.performLogin() // to be implement
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
           LoginView().environmentObject(ViewRouter())
              .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
              .previewDisplayName("iPhone SE")

           LoginView().environmentObject(ViewRouter())
              .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
              .previewDisplayName("iPhone XS Max")
        }
//        LoginView().environmentObject(ViewRouter())
    }
}
