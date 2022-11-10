//

//

import Foundation


struct Card : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price = "GHC25.00"
    var expand : Bool
}

var TrendingCard = [
    Card(id: 0, image: "maxresdefault1", title: "Banku", descrip: "Grill Fish",stars: 5, expand: false),
    Card(id: 1, image: "maxresdefault2", title: "Waakye", descrip: "Hot Sauce",stars: 3, expand: false),
    Card(id: 2, image: "maxresdefault3", title: "Tuozaafi", descrip: "with Green",stars: 4, expand: false),
    Card(id: 3, image: "maxresdefault4", title: "Apapransa", descrip: "nuts",stars: 5, expand: false),
    Card(id: 4, image: "maxresdefault5", title: "Fufu", descrip: "Hot Sauce",stars: 3, expand: false),
    Card(id: 5, image: "maxresdefault6", title: "Yam", descrip: "dont buy yet",stars: 1, expand: false),
]

var FoodTypes = ["Pizza","Drinks","Tacos","Burger","Fries","Top"]
