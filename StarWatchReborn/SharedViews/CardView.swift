//
//  CardView.swift
//  StarWatchReborn
//
//  Created by Mirella Cetronio on 10/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct CardView : View {
    
    var data : Card
    
    var body : some View{
        
        VStack {
            
            Image(data.img)
            
            HStack (spacing: 5) {
                Text(data.name)
                Text(data.surname)
            }
            .font(Font.system(size: 16, weight: .bold))
            .foregroundColor(CustomColor.orangeVeryLight)
            .padding(.vertical, 13)
        }
        .frame(width: UIScreen.main.bounds.width - 30, height: data.show ? 550 : 440)
        .background(CustomColor.blueMiddle)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

struct ListView : View {
    
    var data : Card
    
    var body : some View{
        
        VStack {
            
            Image(data.img)
            
            HStack (spacing: 5) {
                Text(data.name)
                Text(data.surname)
                    .fontWeight(.bold)
                    .padding(.vertical, 13)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 30, height: 100)
        .background(CustomColor.blueMiddle)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

struct Card : Identifiable {
    var id : Int
    var img : String = "avatar"
    var name : String
    var surname : String
    var tel : Int
    var email: String
    var facebook: String
    var instagram: String
    var linkedin: String
    var show : Bool = false
}
