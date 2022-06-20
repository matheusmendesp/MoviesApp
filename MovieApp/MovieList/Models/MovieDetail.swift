//
//  MovieDetail.swift
//  MovieApp
//
//  Created by Matheus Mendes Peres on 19/06/22.
//

import Foundation


class MovieDetail: Codable {
    
    var actors: [Actor]
    var synopsis: String
    var parentalRating: String
    var genre: String
    var score: String
    var releaseYear: String
    
    private enum CodingKeys: String, CodingKey {
        case actors = "actorList"
        case synopsis = "plot"
        case parentalRating = "contentRating"
        case genre = "genres"
        case score = "imDbRating"
        case releaseYear = "year"
    }
    
    init(actors: [Actor], synopsis: String, parentalRating: String, genre: String, score: String, releaseYear: String) {
        self.actors = actors
        self.synopsis = synopsis
        self.parentalRating = parentalRating
        self.genre = genre
        self.score = score
        self.releaseYear = releaseYear
    }
}
