//
//  CardListView.swift
//  StarWatchReborn
//
//  Created by Mirella Cetronio on 10/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct CardListView : View {
    
    @State var x : CGFloat = 0
    @State var count : CGFloat = 0
    @State var screen = UIScreen.main.bounds.width - 30
    @State var op : CGFloat = 0
    
    @State var data = [
        
        Card(id: 0, name: "Jill", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 1, name: "Emma", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 2, name: "Catherine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 3, name: "iJustine", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 4, name: "Juliana", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 5, name: "Lilly", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao"),
        Card(id: 6, name: "Emily", surname: "boh", tel: 3333333, email: "ciao", facebook: "ciao", instagram: "ciao", linkedin:"ciao")
        
    ]
    
    var body : some View{
        
        VStack{
            
            Spacer()
            
            HStack(spacing: 15){
                
                ForEach(data){i in
                    
                    CardView(data: i)
                        .offset(x: self.x)
                        .highPriorityGesture(DragGesture()
                            
                            .onChanged({ (value) in
                                
                                if value.translation.width > 0 {
                                    self.x = value.location.x
                                }
                                else{
                                    self.x = value.location.x - self.screen
                                }
                                
                            })
                            .onEnded({ (value) in
                                
                                if value.translation.width > 0 {
                                    
                                    if value.translation.width > ((self.screen - 80) / 2) && Int(self.count) != 0 {
                                        
                                        self.count -= 1
                                        self.updateHeight(value: Int(self.count))
                                        self.x = -((self.screen + 15) * self.count)
                                    }
                                    else{
                                        self.x = -((self.screen + 15) * self.count)
                                    }
                                }
                                else{
                                    if -value.translation.width > ((self.screen - 80) / 2) && Int(self.count) !=  (self.data.count - 1){
                                        
                                        self.count += 1
                                        self.updateHeight(value: Int(self.count))
                                        self.x = -((self.screen + 15) * self.count)
                                    }
                                    else{
                                        self.x = -((self.screen + 15) * self.count)
                                    }
                                }
                            })
                    )
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .offset(x: self.op)
            
            Spacer()
        }
            .animation(.spring())
            .onAppear {
                self.op = ((self.screen + 15) * CGFloat(self.data.count / 2)) - (self.data.count % 2 == 0 ? ((self.screen + 15) / 2) : 0)
                
                self.data[0].show = true
        }
    }
    
    func updateHeight(value : Int){
        for i in 0..<data.count{
            data[i].show = false
        }
        data[value].show = true
    }
    
}





struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
    }
}
