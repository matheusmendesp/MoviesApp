//
//  MovieCoordinator.swift
//  MovieApp
//
//  Created by Matheus Mendes Peres on 19/06/22.
//

import UIKit

final class MovieCoordinator {
    
    var window: UIWindow
    var navigation: UINavigationController?
    var movieListController: MoviesListViewController?
    
    init(window: UIWindow){
        self.window = window
    }
    
    func start(){
        let controller: MoviesListViewController = .init()
        
        movieListController = controller
        navigation = UINavigationController(rootViewController: controller)
        
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
    
}
