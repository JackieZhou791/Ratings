//
//  Player.swift
//  Ratings
//
//  Created by JackieZhou on 15/5/12.
//  Copyright (c) 2015年 JackieZhou. All rights reserved.
//

import UIKit

class Player: NSObject {
    
    var name: String
    var game: String
    var rating: Int
    
    init(name:String, game:String, rating:Int) {
        self.name = name
        self.game = game
        self.rating = rating
        
        super.init()
    }
}
