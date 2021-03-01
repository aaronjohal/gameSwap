//
//  GenresVC.swift
//  gameSwap
//
//  Created by Aaron Johal on 26/02/2021.
//

import UIKit

class GenresVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet weak var genreTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        genreTable.delegate = self
        genreTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getGenres().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "GenreCell") as? GenreCell { //need to get the cell view
            let genre = DataService.instance.getGenres()[indexPath.row] //get the specific genre at the row
            cell.updateViews(genre: genre)
            return cell
            
        } else {
            return GenreCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let genre = DataService.instance.getGenres()[indexPath.row]
        performSegue(withIdentifier: "CatalogueVC", sender: genre)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let CatalogueVC = segue.destination as? CatalogueVC {
            let barbutton = UIBarButtonItem()
            barbutton.title = ""
            navigationItem.backBarButtonItem = barbutton //remove the 'categories' back button so only a chevron is displayed.
            
            CatalogueVC.initGames(genre: sender as! Genre)
        }
    }
    
 

}
