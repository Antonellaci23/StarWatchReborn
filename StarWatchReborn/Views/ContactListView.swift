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
        Card(id: 6, name: "Emily", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao")
        
    ]
    
    var body: some View {
        GeometryReader { _ in
            ScrollView (.vertical, showsIndicators: true){
//                Text("ContactListView")
                
                ForEach (self.data) { i in
                    ListView(data: i)
                }
                
                
            }
        }
    }
}
