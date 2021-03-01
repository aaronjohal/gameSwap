//
//  DataService.swift
//  gameSwap
//
//  Created by Aaron Johal on 26/02/2021.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let genres = [
        Genre(title: "Action & Adventure", imageName: "adventure"),
        Genre(title: "Sports", imageName: "sport")
    ]
    
    func getGenres() -> [Genre] {
        return genres
    }
    
    
    
    private let ActionGames = [
    Game(gameTitle: "Spider-Man", nameOfImage: "spiderman", isInStock: true),
    Game(gameTitle: "Demon Souls", nameOfImage: "demonsouls", isInStock: true),
    Game(gameTitle: "The Last of Us Part 2", nameOfImage: "lastofus", isInStock: true),
    Game(gameTitle: "Crash Bandicoot", nameOfImage: "crash", isInStock: false)
        ]
    
    private let SportsGames = [
        Game(gameTitle: "FIFA 21", nameOfImage: "fifa", isInStock: true),
        Game(gameTitle: "Madden 21", nameOfImage: "madden", isInStock: false)
    ]
    
    func getActionGames() -> [Game] {
        return ActionGames
    }
    
    func getSportsGames() -> [Game] {
        return SportsGames
    }
    
    
    
    func getGames(forGenreTitle title: String) -> [Game]{
        switch title {
        case "Action & Adventure":
            return getActionGames()
        case "Sports":
        return getSportsGames()
        default:
            return getActionGames()
        }
    }
    
    

    
 
    
   
}
