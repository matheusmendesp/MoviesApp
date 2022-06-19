//
//  MovieListViewController.swift
//  MovieApp
//
//  Created by Matheus Mendes Peres on 19/06/22.
//

import UIKit

final class MovieListViewController: UIViewController {
    
    var _view: MovieListView = {
        let view: MovieListView = .init()
        return view
    }()
    
    weak var coordinator: MovieCoordinator?
    
    init(coordinator: MovieCoordinator){
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = .white
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = _view
    }
    
}
