// SPDX-License-Identifier: EUPL-1.2

//
//  UserDefaultsManager.swift
//  UtilitiesPackage
//
//  Created by Matīss Mamedovs on 05/12/2024.
//

import Foundation


final public class UserDefaultsManager: Sendable {
    public static let shared = UserDefaultsManager()
        
    public func set<T>(value: T, key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public func get<T>(key: String) -> T? {
        UserDefaults.standard.object(forKey: key) as? T
    }
    
    public func remove(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
    
    public func getValueFromSuite<T>(suiteName: String, key: String) -> T? {
        return UserDefaults(suiteName: suiteName)?.value(forKey: key) as? T
    }
    
    public func set<T>(value: T, suiteName: String, key: String) {
        UserDefaults(suiteName: suiteName)?.set(value, forKey: key)
    }
    
    public func remove(suiteName: String, key: String) {
        UserDefaults(suiteName: suiteName)?.removeObject(forKey: key)
    }
}
