import SwiftUI

struct ProfileTabView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var selection = 0
    
    var body: some View {
       TabView(selection: $selection){
            HomeView()
                .tabItem {
                        Image(systemName: "house.fill")
                }
                .tag(0)
            Text("Community")
                .tabItem {
                        Image(systemName: "person.3.fill")
                }
                .tag(1)
            Text("Calendar")
                .tabItem {
                        Image(systemName: "calendar")
                }
                .tag(0)
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
       }
    }
}

struct ProfileTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTabView()
    }
}
