//
//  ModuleA.swift
//  ModuleA
//
//  Created by Kael Ding on 2023/9/2.
//

import Foundation
import GLMediator

struct ModuleA: ModuleAService {
    public func viewControllerForDetail() -> UIViewController {
        let vc = ModuleAViewController()
        vc.valueLabel.text = "Value"
        return vc
    }
    
    public func showAlert(_ title: String,
                   message: String,
                   cancelCallback: AlertCallback?,
                   confirmCallback: AlertCallback?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            cancelCallback?(nil)
        }
        
        let confirmAction = UIAlertAction(title: "Confirm", style: .default) { _ in
            confirmCallback?(["123" : "456"])
        }
        alert.addAction(cancelAction)
        alert.addAction(confirmAction)
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true)
    }
    
    public func presentImage(_ image: UIImage?) {
        let vc = ModuleAViewController()
        vc.valueLabel.text = "This is image"
        vc.imageView.image = image
        UIApplication.shared.keyWindow?.rootViewController?.present(vc, animated: true)
    }
    
    public var version: String = "1.1.0"
}
