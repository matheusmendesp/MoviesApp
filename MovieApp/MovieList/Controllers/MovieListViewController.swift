//
//  MovieListViewController.swift
//  MovieApp
//
//  Created by Matheus Mendes Peres on 19/06/22.
//

import UIKit

final class MoviesListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var api: MovieAPI = .init()
    
    var movies: [Movie] = []
    
    init(api: MovieAPI = MovieAPI()) {
        self.api = api
        super.init(nibName: nil, bundle: nil)
        self.title = "Movies"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var moviesListView: MovieListView = .init(collectionViewMoviesDataSource: self, collectionViewMoviesDelegate: self)
    
    override func loadView() {
        view = moviesListView
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell: MoviesListViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "moviesCell", for: indexPath) as? MoviesListViewCell else {
            return UICollectionViewCell()
        }
        let movie: Movie = movies[indexPath.item]
        cell.setupCell(posterImage: movie.posterImageURL, title: movie.title, index: indexPath.item)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        api.getMovies { movieResponse in
            DispatchQueue.main.async {
                self.movies = movieResponse?.items ?? []
                self.moviesListView.collectionViewListMovies.reloadData()
            }
        }
    }
}
