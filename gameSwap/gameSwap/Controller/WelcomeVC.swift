//
//  ViewController.swift
//  gameSwap
//
//  Created by Aaron Johal on 26/02/2021.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func startedBtnTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "ShowGenreVC", sender: self)
        
    }
    
    
    

}

