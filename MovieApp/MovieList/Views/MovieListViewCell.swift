import UIKit
import Kingfisher

final class MoviesListViewCell: UICollectionViewCell, ViewCode {
    
    var index: Int = 0
    
    var posterImage: UIImageView = {
        let posterImage: UIImageView = UIImageView(frame: .zero)
        posterImage.translatesAutoresizingMaskIntoConstraints = false
        return posterImage
    } ()
    
    var titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel(frame: .zero)
        titleLabel.font = titleLabel.font.withSize(18)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 2
        titleLabel.backgroundColor = .gray.withAlphaComponent(0.5)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    } ()
    
    func setupCell(posterImage: URL?, title: String, index: Int) {
        self.posterImage.kf.setImage(with: posterImage)
        self.titleLabel.text = title
        self.index = index
        setupViews()
    }
    
    func setupViewsHierarchy() {
        addSubview(posterImage)
        addSubview(titleLabel)
    }
    
    func setupConstraints() {
        posterImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        posterImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        posterImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        posterImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: posterImage.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: posterImage.trailingAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    func configureViews() {
        backgroundColor = .white
    }
}
