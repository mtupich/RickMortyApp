import UIKit

class HomeScreen: UIView {
    
    weak var delegate: HomeScreenToViewControllerProtocol?
    
    // MARK: Views
    
    lazy var characteresCollectioView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.minimumLineSpacing = 56
        layout.minimumInteritemSpacing = 0
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .clear
        collection.register(CharacterCell.self, forCellWithReuseIdentifier: "CharacterCell")
        return collection
    }()
    
    //    lazy var searchBar: UISearchBar = {
    //       let bar = UISearchBar()
    //      bar.backgroundColor = .orange
    //       return bar
    //    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildHierarchy()
        setupContraints()
        adicionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

extension HomeScreen {
    func buildHierarchy() {
        addSubview(characteresCollectioView)
    }
    
    func setupContraints() {
        NSLayoutConstraint.activate([
            characteresCollectioView.topAnchor.constraint(equalTo: self.topAnchor),
            characteresCollectioView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            characteresCollectioView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            characteresCollectioView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    func adicionalConfiguration() {
        backgroundColor = .white
    }
}
