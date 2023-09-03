//
//  ModuleB.swift
//  ModuleA
//
//  Created by Kael Ding on 2023/9/2.
//

import Foundation
import GLMediator

struct ModuleB: ModuleBService {
    public var version: String = "1.0.0"
    
    public func viewController() -> UIViewController {
        return ModuleBViewController()
    }
}
