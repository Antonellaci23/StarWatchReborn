//
//  ContentView.swift
//  StarWatchReborn
//
//  Created by Antonella Cirma on 02/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    var pageName = [ "Home", "Profile", "Qr Code", "Contacts" ]
    
    var body : some View{
//        NavigationView {
        ZStack{
            CustomColor.blueMiddle
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Text("\(pageName[index])")
                    .font(Font.system(size: 18, weight: .semibold))
                    .foregroundColor(CustomColor.orangeDark)
                
                ZStack{
                    
                    HomeView().opacity(self.index == 0 ? 1 : 0)
                    
                    ProfileView().opacity(self.index == 1 ? 1 : 0)
                    
                    QRcodeView().opacity(self.index == 2 ? 1 : 0)
                    
                    ContactListView().opacity(self.index == 3 ? 1 : 0)
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(CustomColor.blueDark))
                
                TabBar(index: self.$index)
            }
            
        }
//        .navigationBarHidden(true)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
