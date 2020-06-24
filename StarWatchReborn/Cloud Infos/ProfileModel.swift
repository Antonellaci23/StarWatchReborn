//
//  ProfileModel.swift
//  StarWatchReborn
//
//  Created by Giovanni Di Guida on 24/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import CloudKit
import SwiftUI

class ProfileModel: ObservableObject, Identifiable{
    let id : UUID
    var recordID : CKRecord.ID?
    var img : UIImage
    var name : String
    var surname : String
    var company : String
    var tel : Int
    var email: String
    var website : String
    var facebook: String
    var instagram: String
    var linkedin: String
    var twitter : String
    
    init(card: Card, comp: String, web: String, tweet: String){
        self.id = card.id
        self.img = card.img
        self.name = card.name
        self.surname = card.surname
        self.company = comp
        self.tel = card.tel
        self.email = card.email
        self.website = web
        self.facebook = card.facebook
        self.instagram = card.instagram
        self.linkedin = card.linkedin
        self.twitter = tweet
    }
    
    init(n: String, s: String, img : UIImage , comp: String, t: Int, mail: String, web: String, face: String, insta: String, l: String, tweet: String){
        self.id = UUID()
        self.img = img
        self.name = n
        self.surname = s
        self.company = comp
        self.tel = t
        self.email = mail
        self.website = web
        self.facebook = face
        self.instagram = insta
        self.linkedin = l
        self.twitter = tweet
    }
    
    init(rID: CKRecord.ID, n: String, s: String, img : UIImage , comp: String, t: Int, mail: String, web: String, face: String, insta: String, l: String, tweet: String){
        self.id = UUID()
        self.recordID = rID
        self.img = img
        self.name = n
        self.surname = s
        self.company = comp
        self.tel = t
        self.email = mail
        self.website = web
        self.facebook = face
        self.instagram = insta
        self.linkedin = l
        self.twitter = tweet
    }
    
}

