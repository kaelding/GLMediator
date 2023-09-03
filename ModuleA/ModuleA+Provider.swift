//
//  Alert+Provider.swift
//  GLAlert
//
//  Created by Kael Ding on 2023/8/28.
//

import Foundation
import GLMediator

extension ProviderA: ModuleProvider {
    public func getModule() -> ModuleService? {
        ModuleA()
    }
}
