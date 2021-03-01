//
//  GenreCellTableViewCell.swift
//  gameSwap
//
//  Created by Aaron Johal on 26/02/2021.
//

import UIKit

class GenreCell: UITableViewCell {
    
    @IBOutlet weak var imageName: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    func updateViews(genre: Genre){
        
        imageName.image = UIImage(named: genre.imageName)
        title.text = genre.title
    }

    



}
