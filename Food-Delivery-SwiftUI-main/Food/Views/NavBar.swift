
//

import SwiftUI

struct NavBar: View {
    @State private var selection = 1
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    var body: some View {
        TabView(selection: $selection) {
            HomeView().tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
            }.tag(1)
            
            CheckOut().tabItem {
                VStack {
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Track")
                }
                
            }.tag(2)
            
            profile().tabItem {
                VStack {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                
            }.tag(3)
        }
        .accentColor(.red)
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
