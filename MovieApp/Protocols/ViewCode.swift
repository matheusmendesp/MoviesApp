//
//  ViewCode.swift
//  MovieApp
//
//  Created by Matheus Mendes Peres on 19/06/22.
//

import Foundation

protocol ViewCode {
    func setupViewsHierarchy()
    func setupConstraints()
    func configureViews()
    func setupViews()
}

extension ViewCode {
    func setupViews(){
        setupViewsHierarchy()
        setupConstraints()
        configureViews()
    }
}
