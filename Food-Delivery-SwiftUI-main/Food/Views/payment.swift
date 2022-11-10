//
//  payment.swift
//  Food
//
//  Created by kekeli on 03/11/2022.
//

import SwiftUI

struct payment: View {
    @State var textfieldText: String = ""
    @State private var birthday = Date()
    var body: some View {
        NavigationView{
            
            
            ZStack{
                VStack{
                    Section{
                        List{
                            
                            TextField("Card number", text: $textfieldText)
                            
                            DatePicker("Expires", selection: $birthday, displayedComponents: .date)
                            
                            TextField("CVV", text: $textfieldText)
                            
                            NavigationLink("Pay now", destination: Text("Order complete"))
                            
                            
                                HStack{
                                    
                                    Image("MTN")
                                        .resizable()
                                        .scaledToFit()
                                        .padding(.leading)
                                        .frame(width: 100, height: 100)
                                    Image("Vodafone")
                                        .resizable()
                                        .scaledToFit()
                                        .padding(.trailing)
                                        .frame(width: 100, height: 100)
                                    Image("tigo")
                                        .resizable()
                                        .scaledToFit()
                                        .padding(.leading)
                                        .frame(width: 100, height: 100)
                                }
                             
                            
                            
                        }
                    }
              
                }
              
            }
            .navigationTitle("Payment")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}
struct payment_Previews: PreviewProvider {
    static var previews: some View {
        payment()
    }
}
