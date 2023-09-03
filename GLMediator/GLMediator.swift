//
//  GLMediator.swift
//  Pods-GLMediatorDemo
//
//  Created by Kael Ding on 2023/8/27.
//

import Foundation

public class GLMediator {
    public static let shared = GLMediator()
    
    private let providers: [ProviderKey: BaseProvider] = [
        ProviderKey(service: ModuleAService.self) : ProviderA(),
        ProviderKey(service: ModuleBService.self) : ProviderB(),
    ]
            
    public static func module<Service>(_ service: Service.Type) -> Service? {
        return GLMediator.shared._module(service)
    }
    
    private func _module<Service>(_ service: Service.Type) -> Service? {
        let key = ProviderKey(service: service)
        let provider = providers[key]!
        let wrapper = ProviderWrapper<Service>(provider)
        return wrapper.module
    }
}
