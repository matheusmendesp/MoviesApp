//
//  AppDelegate.swift
//  MovieApp
//
//  Created by Matheus Mendes Peres on 19/06/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var movieCoordinator: MovieCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        movieCoordinator = .init(window: window)
        self.window = window
        
        movieCoordinator?.start()
        
        return true
    }
}

