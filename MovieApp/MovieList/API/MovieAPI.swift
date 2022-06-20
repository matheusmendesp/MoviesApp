//
//  MovieAPI.swift
//  MovieApp
//
//  Created by Matheus Mendes Peres on 19/06/22.
//

import Foundation

final class MovieAPI {
    func getMovies(completion: @escaping ((_ movies: MovieListResponse?) -> Void)) {
        
        guard let urlComponents: URLComponents = URLComponents(string: "https://imdb-api.com/API/MostPopularMovies/k_99w129a7") else {
            completion (nil)
            return
        }
        guard let url: URL = urlComponents.url else {
            completion (nil)
            return
        }
        let request: URLRequest = .init(url: url)
        RequestManager.request(request, completion: completion)
    }
    
    func getMoviesDetail(id: String, completion: @escaping ((_ movieDetail: MovieDetail?) -> Void)) {
        guard let urlComponents: URLComponents = URLComponents(string: "https://imdb-api.com/pt-br/API/Title/k_99w129a7/\(id)") else {
            completion(nil)
            return
        }
        guard let url: URL = urlComponents.url else {
            completion(nil)
            return
        }
        let request: URLRequest = .init(url: url)
        RequestManager.request(request, completion: completion)
    }
}

