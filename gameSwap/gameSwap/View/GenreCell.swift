//
//  GenreCellTableViewCell.swift
//  gameSwap
//
//  Created by Aaron Johal on 26/02/2021.
//

import UIKit

class GenreCell: UITableViewCell {
    
    @IBOutlet weak var genreImage: UIImageView!
    @IBOutlet weak var genreTitle: UILabel!
    
    
    func updateViews(genre: Genre){
        
        genreImage.image = UIImage(named: genre.imageName)
        genreTitle.text = genre.title
        
    
    }

    



}
