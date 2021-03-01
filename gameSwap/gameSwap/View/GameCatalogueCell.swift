//
//  GameCatalogueCellCollectionViewCell.swift
//  gameSwap
//
//  Created by Aaron Johal on 27/02/2021.
//

import UIKit

class GameCatalogueCell: UICollectionViewCell {
    
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var availabilityBtn: UIButton!
    
    func updateViews(game: Game){
        gameImage.image = UIImage(named: game.imageName)
       gameTitle.text = game.title
       let buttonTitle =   isAvailable(availibility: game.available)
        availabilityBtn.setTitle(buttonTitle, for: .normal)
      
        
    }
    
    func isAvailable(availibility: Bool) -> String {
        if(availibility == true){
            return "TRADE NOW"
        } else {
            availabilityBtn.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            return "PRE ORDER"
           
        }
    }
    
}
