//
//  Game.swift
//  gameSwap
//
//  Created by Aaron Johal on 27/02/2021.
//

import Foundation


struct Game {
    private (set) public var title: String
    private (set) public var imageName: String
    private (set) public var available: Bool
    
    init(gameTitle title: String, nameOfImage imageName: String, isInStock available: Bool) {
        self.title = title
        self.imageName = imageName
        self.available = available
    }
    
  
    
}
