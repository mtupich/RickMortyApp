import UIKit

class CharacterCell: UICollectionViewCell {
    
    static let identifier: String = "CharacterCell"
    static var padding: CGFloat = 16
    
    lazy var container: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 130))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 80.0 / 255.0, green: 146.0 / 255.0, blue: 170.0 / 255.0, alpha: 1.0)
        view.layer.cornerRadius = 10.0
        view.layer.masksToBounds = true
        return view
    }()
    
    lazy var characterImg: UIImageView = {
        let img = UIImageView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        img.image = UIImage(named: "imgDefault")
        img.layer.cornerRadius = 10.0
        img.layer.masksToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()

    lazy var name: UILabel = {
        let name = UILabel()
        name.text = "Rick"
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildHierarchy()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CharacterCell {
    func buildHierarchy() {
        addSubview(container)
        container.addSubview(characterImg)
        container.addSubview(name)
    }
    
    func setupContraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: self.topAnchor),
//            container.leadingAnchor.constraint(equalTo: self.trailingAnchor),
//            container.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            container.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            container.heightAnchor.constraint(equalToConstant: 140),
            container.widthAnchor.constraint(equalToConstant: 100),
            
            characterImg.topAnchor.constraint(equalTo: container.topAnchor, constant: 10),
            characterImg.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            characterImg.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10),
            characterImg.bottomAnchor.constraint(equalTo: name.topAnchor, constant: -10),
            
            name.topAnchor.constraint(equalTo: characterImg.bottomAnchor, constant: 10),
            name.trailingAnchor.constraint(equalTo: characterImg.trailingAnchor, constant: -10),
            name.leadingAnchor.constraint(equalTo: characterImg.leadingAnchor, constant: 10),
            name.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -10),
        ])
    }
}
