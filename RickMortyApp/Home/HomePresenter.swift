import UIKit

class HomePresenter: HomePresenterProtocol {
    var viewController: HomePresenterToViewControllerProtocol?
    
    private let interactor: HomePresenterToInteractorProtocol
    private let router: HomePresenterToRouterProtocol
    
    private(set) var viewEntity = HomeViewEntity()

    // MARK: Inicialization

    init(interactor: HomePresenterToInteractorProtocol,
         router: HomePresenterToRouterProtocol) {
      self.interactor = interactor
      self.router = router
    }

}
