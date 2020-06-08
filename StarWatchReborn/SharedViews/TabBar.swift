//
//  TabBar.swift
//  StarWatchReborn
//
//  Created by Mirella Cetronio on 08/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct TabBar : View {
    
    @Binding var index : Int
    
    var body : some View{
        
        HStack {
            
            Spacer()
            
            Button(action: { self.index = 0 }) {
                Image(systemName: "gear")
                    .foregroundColor(self.index == 0 ? Color.white : Color.white.opacity(0.5))
            }
            
            Spacer()
            
            Button(action: { self.index = 1 }) {
                Image(systemName: "person")
                    .foregroundColor(self.index == 1 ? Color.white : Color.white.opacity(0.5))
            }
            
            Spacer()
            
            Button(action: { self.index = 2 }) {
                Image(systemName: "qrcode")
                    .foregroundColor(self.index == 2 ? Color.white : Color.white.opacity(0.5))
            }
            
            Spacer()
            
            Button(action: { self.index = 3 }) {
                Image(systemName: "rectangle.stack.person.crop")
                    .foregroundColor(self.index == 3 ? Color.white : Color.white.opacity(0.5))
            }
            
            Spacer()
            
        }
        .padding(.top, 20)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(index: .constant(0))
    }
}
