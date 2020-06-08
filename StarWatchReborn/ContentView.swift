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
    
    var body : some View{
        
        ZStack{
            
            VStack{
                
                Color.blue
            }
            
            VStack{
                
                ZStack{
                    
                    HomeView().opacity(self.index == 0 ? 1 : 0)
                    
                    ProfileView().opacity(self.index == 1 ? 1 : 0)
                    
                    QRcodeView().opacity(self.index == 2 ? 1 : 0)
                    
                    ContactListView().opacity(self.index == 3 ? 1 : 0)
                }
                .background(Color.green)
                
                TabBar(index: self.$index)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}













