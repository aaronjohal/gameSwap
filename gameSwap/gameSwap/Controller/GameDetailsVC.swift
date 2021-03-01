//
//  GameDetailsVCViewController.swift
//  gameSwap
//
//  Created by Aaron Johal on 01/03/2021.
//

import UIKit

class GameDetailsVC: UIViewController {
    
    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var gameTitle: UILabel!
    private (set) public var game: Game!
    private (set) public var myGameList = [Game]()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

        // Do any additional setup after loading the view.
    }
    
    func initGameDetails(game: Game){
        self.game = game
    }
    
    func updateView(){
        
        gameImage.image = UIImage(named: game.imageName)
        gameTitle.text = game.title
        
        
        
    }


}
