//
//  CatalogueVC.swift
//  gameSwap
//
//  Created by Aaron Johal on 27/02/2021.
//

import UIKit

class CatalogueVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
  
    
    @IBOutlet weak var gamesCollection: UICollectionView!
    private (set) public var games = [Game]()

    override func viewDidLoad() {
        super.viewDidLoad()

        gamesCollection.delegate = self
        gamesCollection.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func initGames(genre: Genre){
        games = DataService.instance.getGames(forGenreTitle: genre.title)
        navigationItem.title = genre.title
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return games.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GameCatalogueCell", for: indexPath) as? GameCatalogueCell {
            let game = games[indexPath.row]
            cell.updateViews(game: game)
            
            
            //tagging a button inside a collection view so that it can be used
            cell.availabilityBtn.tag = indexPath.item
            cell.availabilityBtn.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside)
            return cell
        }
        return GameCatalogueCell()
        }
        

    
    @objc func buttonClicked(_ sender: UIButton){
        let game = games[sender.tag] //get the tag number to find the  game that has been tapped
      
      performSegue(withIdentifier: "GameDetailsVC", sender: game)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let GamesDetailsVC = segue.destination as? GameDetailsVC {
            GamesDetailsVC.initGameDetails(game: sender as! Game)
        }
    }
}
    

