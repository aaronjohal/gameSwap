//
//  Genres.swift
//  gameSwap
//
//  Created by Aaron Johal on 26/02/2021.
//

import Foundation


struct Genre {
    private (set) public var title: String!
    private (set) public var imageName: String!
    
    init(title: String, imageName:String){
        self.title = title
        self.imageName = imageName
    }
    
    
   
}
