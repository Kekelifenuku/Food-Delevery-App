//
//  Profile.swift
//  Food
//
//  Created by kekeli on 02/11/2022.
//

import SwiftUI

struct FavoriteCities: Identifiable {
    var id: String = UUID().uuidString
    var city: String
    var icon: String
}

struct profile: View {
    @State var favoriteCities = [
        FavoriteCities(city: "My Account", icon: "square.and.pencil"),
        FavoriteCities(city: "My orders", icon: "tray.and.arrow.down"),
        FavoriteCities(city: "My information", icon: "bookmark"),
        FavoriteCities(city: "Share and Earn", icon: "coloncurrencysign.circle"),
        FavoriteCities(city: "Promocodes", icon: "megaphone"),
        FavoriteCities(city: "F.A.Q.", icon: "arrow.rectanglepath"),
        FavoriteCities(city: "Notification", icon: "bell"),
        FavoriteCities(city: "Delete my account and data", icon: "square.split.diagonal.2x2"),
        FavoriteCities(city: "Log Out", icon: "power.circle")
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(favoriteCities) {favorite in
                    
                    NavigationLink(
                        destination: Text(favorite.city), label: {
                                HStack{
                                    Image(systemName: favorite.icon)
                    Text(favorite.city)
               .foregroundColor(Color.red)
                        .font(.headline)
                }
                                })
               
                }
                
            }.navigationTitle(Text("Hello, keli!"))
                .navigationBarTitleDisplayMode(.automatic)
        }
        
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
