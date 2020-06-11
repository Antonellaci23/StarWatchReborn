//
//  ContactListView.swift
//  StarWatchReborn
//
//  Created by Mirella Cetronio on 08/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct ContactListView: View {
    
    @State var data = [
        
        Card(id: 0, name: "Jill", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 1, name: "Emma", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 2, name: "Catherine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 3, name: "iJustine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 4, name: "Juliana", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 5, name: "Lilly", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 6, name: "Emily", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 7, name: "Jill", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 8, name: "Emma", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 9, name: "Catherine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 10, name: "iJustine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 11, name: "Juliana", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 12, name: "Lilly", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 13, name: "Emily", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 14, name: "Jill", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 15, name: "Emma", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 16, name: "Catherine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 17, name: "iJustine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 18, name: "Juliana", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 19, name: "Lilly", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 20, name: "Emily", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao")
        
    ]
    
    var body: some View {
            GeometryReader { _ in
                ScrollView (.vertical, showsIndicators: false){
                    
                    ForEach (self.data) { i in
//                        NavigationLink(destination: CardView(data: i)) {
                            ListView(data: i)
//                        }
                    }
                    
                }
            }
            .padding(.vertical, 10)
    }
}
