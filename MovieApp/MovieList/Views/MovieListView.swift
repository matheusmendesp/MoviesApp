//
//  MovieListView.swift
//  MovieApp
//
//  Created by Matheus Mendes Peres on 19/06/22.
//

import UIKit

final class MovieListView: UIView, ViewCode {
    
    // Properties
    lazy var tableView: UITableView = {
        let tableView: UITableView = .init(frame: .zero)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    init() {
        super.init(frame: .zero)

        setupViews()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViewsHierarchy() {
        addSubview(tableView)
    }

    func setupConstraints() {
        if #available(iOS 11.0, *) {
            tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
            tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        }

        tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true

    }

    func configureViews() {
        tableView.register(MovieListViewCell.self, forCellReuseIdentifier: MovieListViewCell.identifier)
        backgroundColor = .white
    }
}

extension MovieListView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MovieListViewCell = tableView.dequeueReusableCell(withIdentifier: MovieListViewCell.identifier, for: indexPath) as? MovieListViewCell else {
            return MovieListViewCell()
        }
        
        cell.setupCell(posterImage: movie.posterImageURL, title: movie.title, index: indexPath.item)

        return cell
    }

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let character: Character = viewModel.characteres[indexPath.row]
//        delegate?.didSelectCharacater(character)
//    }
}
