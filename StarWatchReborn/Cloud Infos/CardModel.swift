//
//  CardModel.swift
//  StarWatchReborn
//
//  Created by Giovanni Di Guida on 24/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct Card : Identifiable {
    var id : UUID
    var img : UIImage = UIImage(imageLiteralResourceName: "avatar")
    var name : String
    var surname : String
    var tel : Int
    var email: String
    var facebook: String
    var instagram: String
    var linkedin: String
    var show : Bool = false
}
