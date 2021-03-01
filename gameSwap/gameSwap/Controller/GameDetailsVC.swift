//
//  GameDetailsVCViewController.swift
//  gameSwap
//
//  Created by Aaron Johal on 01/03/2021.
//

import UIKit

class GameDetailsVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    
    
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var gameTitle: UILabel!
    private (set) public var game: Game!
    private (set) public var myGameList = [Game]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.dataSource = self
        picker.delegate = self


        myGameList = [Game(gameTitle: "Assins Creed", nameOfImage: "Doesn't Matter", isInStock: true)]
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
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return myGameList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myGameList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myGameList[row].title
    }


}
