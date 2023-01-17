import UIKit

class HomeViewController: UIViewController {
    
    private let screen = HomeScreen()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAdicionalConfig()
    }

    override func loadView() {
      screen.delegate = self
      view = screen
    }
    
    func setupAdicionalConfig() {
        screen.characteresCollectioView.delegate = self
        screen.characteresCollectioView.dataSource = self
    }
}

extension HomeViewController: HomeScreenToViewControllerProtocol {}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width/3) - 16, height: (collectionView.frame.width/3) - 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 18
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharacterCell", for: indexPath) as! CharacterCell
        return cell
    }
  
}
