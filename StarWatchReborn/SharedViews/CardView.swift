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
    
    var body : some View {
        
        VStack {
            
            Image(data.img)
            
            Text("\(data.name) \(data.surname)")
                .font(Font.system(size: 20, weight: .bold))
        }
        .foregroundColor(CustomColor.orangeVeryLight)
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
            
            HStack (spacing: 5) {
                Image(data.img)
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 45, height: 45)
                    .aspectRatio(contentMode: .fill)
                    .padding(.horizontal, 20)
                
                Text("\(data.name) \(data.surname)")
                    .font(Font.system(size: 20, weight: .bold))
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .padding(.horizontal, 20)
                    .foregroundColor(CustomColor.orangeMiddle)
            }
            .foregroundColor(CustomColor.orangeVeryLight)
        }
        .frame(width: UIScreen.main.bounds.width - 30, height: 50)
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

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
        CardView(data: Card(id: 1, name: "Mirella", surname: "Cetronio", tel: 3333333333, email: "mail@mail.it", facebook: "link to fb", instagram: "instagram", linkedin: "linkedin"))
        
        ListView(data: Card(id: 1, name: "Mirella", surname: "Cetronio", tel: 3333333333, email: "mail@mail.it", facebook: "link to fb", instagram: "instagram", linkedin: "linkedin"))
        }
    }
}
