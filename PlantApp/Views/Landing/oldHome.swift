import SwiftUI

struct oldHome: View {
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Text("Hello, Username!")
                Spacer()
                Image(systemName: "plus.square.fill")
                    .foregroundColor(.green)
            }
            .padding()
            .font(.title)
            VStack(alignment: .leading){
                Text("Groups")
                HStack{
                    Rectangle()
                    .frame(width: 100, height: 100)
                    Rectangle()
                    .frame(width: 100, height: 100)
                    Rectangle()
                    .frame(width: 100, height: 100)
                }
                Button(action: {
                    print("button pressed")
                    self.alertIsVisible = true
                }){
                    Text("Button")
                }
                .alert(isPresented: $alertIsVisible) { () ->
                    Alert in
                    return Alert (title: Text("Hello"), message: Text("This is a test"), dismissButton: .default(Text("cancel")))}
            }
            Spacer()
        }
    }
}

struct oldHome_Previews: PreviewProvider {
    static var previews: some View {
        oldHome()
    }
}
