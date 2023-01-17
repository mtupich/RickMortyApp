import UIKit

protocol HomeScreenToViewControllerProtocol: AnyObject {}

protocol HomeViewControllerToPresenterProtocol: AnyObject {
  var viewEntity: HomeViewEntity { get }
}

protocol HomePresenterProtocol: AnyObject {
  var viewController: HomePresenterToViewControllerProtocol? { get set }
}

protocol HomePresenterToInteractorProtocol: AnyObject {
  var dataEntity: HomeInteractorDataEntity { get }
}

protocol HomePresenterToRouterProtocol: AnyObject {}

protocol HomePresenterToViewControllerProtocol: AnyObject {}

protocol HomeInteractorProtocol: AnyObject {
  var presenter: HomeInteractorToPresenterProtocol? { get set }
}

protocol HomeInteractorToWorkerProtocol: AnyObject {}

protocol HomeInteractorToPresenterProtocol: AnyObject {}

protocol HomeWorkerProtocol: AnyObject {
  var interactor: HomeWorkerToInteractorProtocol? { get set }
}

protocol HomeWorkerToInteractorProtocol: AnyObject {}

protocol HomeRouterProtocol: AnyObject {
  var viewController: UIViewController? { get set }

}
