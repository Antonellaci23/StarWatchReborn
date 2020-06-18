//
//  AddProfile.swift
//  StarWatchReborn
//
//  Created by Antonella Cirma on 10/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI
import AudioToolbox

struct CellAddProfile: View {
    
    @State var name = ""
    @State var surname = ""
    @State var company = ""
    @State var phone = ""
    @State var email = ""
    @State var website = ""
    @State var facebook = ""
    @State var instagram = ""
    @State var linkedin = ""
    @State var string = "0"
    
    var body: some View {
        VStack {
            HStack {
                appTextField(placeholder: Text("Name"), text: $name)
                Image(systemName: "person")
                
            }.modifier(appTextFieldStyle(stroke: 1))
                .padding(.horizontal, 32)
            HStack {
                appTextField(placeholder: Text("Surname"), text: $surname)
                Image(systemName: "person")
                
            }.modifier(appTextFieldStyle(stroke: 1))
                .padding(.horizontal, 32)
            HStack {
                appTextField(placeholder: Text("Company"), text: $company)
                Image(systemName: "person")
                
            }.modifier(appTextFieldStyle(stroke: 1))
                .padding(.horizontal, 32)
            HStack {
                
                appTextField(placeholder: Text("Phone"), text: $phone).keyboardType(UIKeyboardType.phonePad)
                Image(systemName: "phone")
                
            }.modifier(appTextFieldStyle(stroke: 1))
                .padding(.horizontal, 32)
            HStack {
                appTextField(placeholder: Text("E-mail"), text: $email)
                Image(systemName: "envelope")
                
            }.modifier(appTextFieldStyle(stroke: 1))
                .padding(.horizontal, 32)
            HStack {
                appTextField(placeholder: Text("Website"), text: $website)
                Image(systemName: "desktopcomputer")
                
            }.modifier(appTextFieldStyle(stroke: 1))
                .padding(.horizontal, 32)
            HStack {
                appTextField(placeholder: Text("Facebook"), text: $facebook)
                Image(systemName: "person.2")
                
            }.modifier(appTextFieldStyle(stroke: 1))
                .padding(.horizontal, 32)
            HStack {
                appTextField(placeholder: Text("Instagram"), text: $instagram)
                Image(systemName: "person.2")
                
            }.modifier(appTextFieldStyle(stroke: 1))
                .padding(.horizontal, 32)
            HStack {
                appTextField(placeholder: Text("LinkedIn"), text: $linkedin)
                Image(systemName: "person.2")
                
            }.modifier(appTextFieldStyle(stroke: 1))
                .padding(.horizontal, 32)
            
            Button(action: {  let impactLight = UIImpactFeedbackGenerator(style: .light)
                impactLight.impactOccurred()}) {
                    Image("saveButton").renderingMode(.original).padding(.top, 90.0)
            }
        }
    }
}
struct CellAddProfile_Previews: PreviewProvider {
    static var previews: some View {
        CellAddProfile()
    }
}
