//
//  ProfileView.swift
//  StarWatchReborn
//
//  Created by Mirella Cetronio on 08/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
//        GeometryReader { _ in
//            VStack {
//                Text("ProfileView")
        CardView(data: Card(id: UUID(), name: "Jill", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao", show: true))
//            }
//        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
