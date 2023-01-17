import Foundation

class HomeInteractor: HomeInteractorProtocol {
    var presenter: HomeInteractorToPresenterProtocol?
    private(set) var dataEntity = HomeInteractorDataEntity()
    
}
