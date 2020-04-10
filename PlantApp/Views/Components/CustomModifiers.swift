import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.offwhite)
            .padding()
            .frame(width: UIScreen.main.bounds.width - 170, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 15, style:   .circular).fill(Color.newBlack))
            .padding(.bottom, 8)
    }
}

extension View {
    func customButton() -> ModifiedContent<Self, ButtonModifier> {
        return modifier(ButtonModifier())
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
//            .font(.custom("Luna", size: 32))
//            .font(.largeTitle)
            .foregroundColor(.darkGreen)
            .padding()
    }
}

extension View {
    func customHeading() -> ModifiedContent<Self, TitleModifier> {
        return modifier(TitleModifier())
    }
}

struct Slogan: View {
 var body: some View {
     return Text("Explore the world of plants")
//        .font(.subheadline)
        .font(.custom("DK-Lemon-Yellow-Sun", size: 12))
        .foregroundColor(.newBlack)
    }
}

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .background(RoundedRectangle(cornerRadius: 15, style:   .circular).fill(Color.newBlack))
//        .textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 300, alignment: .center)
    }
}

extension View {
    func customTextField() -> ModifiedContent<Self, TextFieldModifier> {
        return modifier(TextFieldModifier())
    }
}

struct PasswordSecureField: View {
    @Binding var password: String

    var body: some View {
        return SecureField("Password", text: $password)
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color.offwhite))
            .frame(width: UIScreen.main.bounds.width - 90, alignment: .center)
    }
}

struct UsernameTextField: View {
    @Binding var username: String

    var body: some View {
        return TextField("Username", text: $username)
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color.offwhite))
//            .border(Color.red)
            .frame(width: UIScreen.main.bounds.width - 90, alignment: .center)
            .foregroundColor(Color.newBlack)
    }
}

struct NameTextField: View {
    @Binding var name: String

    var body: some View {
        return TextField("Name", text: $name)
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color.offwhite))
            .frame(width: UIScreen.main.bounds.width - 90, alignment: .center)
    }
}

struct EmailTextField: View {
    @Binding var email: String

    var body: some View {
        return TextField("Email", text: $email)
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color.offwhite))
            .frame(width: UIScreen.main.bounds.width - 90, alignment: .center)
    }
}
