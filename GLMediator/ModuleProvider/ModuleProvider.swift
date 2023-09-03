//
//  ModuleProvider.swift
//  GLMediator
//
//  Created by Kael Ding on 2023/8/27.
//

import Foundation

public protocol ModuleProvider {
    func getModule() -> ModuleService?
}

public struct ProviderWrapper<Service> {
    private var provider: BaseProvider?
    public init(_ provider: BaseProvider?) {
        self.provider = provider
    }
    public var module: Service {
        let provider = provider as? ModuleProvider
        return provider?.getModule() as! Service
    }
}

// MARK: ProviderKey
public struct ProviderKey {
    var service: Any.Type
}

extension ProviderKey: Hashable {
    public func hash(into hasher: inout Hasher) {
        ObjectIdentifier(service).hash(into: &hasher)
    }
    public static func == (lhs: ProviderKey, rhs: ProviderKey) -> Bool {
        return lhs.service == rhs.service
    }
}

// MARK: Provider
public protocol BaseProvider { }

public struct ProviderA: BaseProvider { }
public struct ProviderB: BaseProvider { }
public struct ProviderC: BaseProvider { }
public struct ProviderD: BaseProvider { }
