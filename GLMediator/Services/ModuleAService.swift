//
//  AlertService.swift
//  GLMediator
//
//  Created by Kael Ding on 2023/8/28.
//

import Foundation

public typealias AlertCallback = (_ info: [String: String]?) -> Void

public protocol ModuleAService: ModuleService {
    func viewControllerForDetail() -> UIViewController
    func showAlert(_ title: String,
                   message: String,
                   cancelCallback: AlertCallback?,
                   confirmCallback: AlertCallback?)
    func presentImage(_ image: UIImage?)
}
