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
        
        Card(id: UUID(), name: "Jill", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Emma", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Catherine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "iJustine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Juliana", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Lilly", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Emily", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Jill", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Emma", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Catherine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "iJustine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Juliana", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Lilly", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Emily", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Jill", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Emma", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Catherine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "iJustine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Juliana", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Lilly", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: UUID(), name: "Emily", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao")
        
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
