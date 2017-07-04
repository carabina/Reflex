//
//  Reflector.swift
//  Reflection
//
//  Created by incetro on 27/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - Reflector

public class Reflector {
    
    fileprivate let typeResolver: TypeResolver
    
    public init() {
        
        self.typeResolver = TypeResolver()
    }
    
    /// Find all named children in mirror
    ///
    /// - Parameter mirror: Given mirror
    /// - Returns: Children (without ancestor's properties)
    
    fileprivate func properties(from mirror: Mirror) -> [Reflection] {
        
        return mirror.children.enumerated().map { _, attribute in
            
            let type = typeResolver.resolve(from: Mirror(reflecting: attribute.value))
            
            let property = Reflection(name: attribute.label ?? "", value: attribute.value, type: type)
            
            return property
        }
    }
    
    /// Find all named children in mirror
    ///
    /// - Parameters:
    ///   - mirror: Given mirror
    ///   - level: The number of levels for ancestors
    /// - Returns: Children with properties of reqired ancestors
    
    private func ancestors(from mirror: Mirror, level: Int) -> [Reflection] {
        
        guard level > 0 else {
            
            return []
        }
        
        let properties: [Reflection] = self.properties(from: mirror)
        
        if let ancestor = mirror.superclassMirror {
            
            return properties + self.ancestors(from: ancestor, level: level - 1)
            
        } else {
            
            return properties
        }
    }
    
    /// Find all named children in some subject
    ///
    /// - Parameter subject: Given subject
    /// - Returns: Children (without ancestor's properties)
    
    fileprivate func properties(from subject: Any) -> [Reflection] {
        
        let mirror = Mirror(reflecting: subject)
        
        return properties(from: mirror)
    }
    
    /// Find all named children in some subject
    ///
    /// - Parameters:
    ///   - subject: Given subject
    ///   - level: The number of levels for ancestors
    /// - Returns: Children with properties of all ancestors
    
    private func fullAncestors(from subject: Any, level: Int = Int.max) -> [Reflection] {
        
        let mirror = Mirror(reflecting: subject)
        
        return self.ancestors(from: mirror, level: level)
    }
    
    /// Reflect the given subject
    ///
    /// - Parameter subject: Given subject
    /// - Returns: Reflection for the given subject
    
    public static func reflect(from subject: Any) -> Reflection {
        
        let reflector = Reflector()
        
        return reflector.reflect(from: subject)
    }
    
    /// Reflect the given subject
    ///
    /// - Parameters:
    ///   - subject: Given subject
    ///   - ancestorsRequirements: The requirements to search properties in ancestors
    /// - Returns: Reflection for the given subject
    
    public static func reflect(from subject: Any, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements) -> Reflection {
        
        let reflector = Reflector()
        
        return reflector.reflect(from: subject, withAncestorsRequirements: ancestorsRequirements)
    }
    
    /// Reflect the given subject
    ///
    /// - Parameters:
    ///   - subject: Given subject
    ///   - ancestorsRequirements: The requirements to search properties in ancestors
    /// - Returns: Reflection for the given subject
    
    public func reflect(from subject: Any, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements) -> Reflection {
                
        let properties: [Reflection]
        
        switch ancestorsRequirements {
            
        case .disabled:
            
            properties = self.properties(from: subject)
            
        case .all:
            
            properties = self.fullAncestors(from: subject)
            
        case .level(of: let level):
            
            properties = self.fullAncestors(from: subject, level: level)
        }
        
        let type = typeResolver.resolve(from: Mirror(reflecting: subject))
        
        let name = String(describing: subject)
        
        let result = Reflection(name: name, value: subject, type: type, children: properties)
        
        return result
    }
    
    /// Reflect given subject with AncestorsRequirements.disabled
    ///
    /// - Parameter subject: Given subject
    /// - Returns: Reflection for the given subject
    
    public func reflect(from subject: Any) -> Reflection {
        
        return self.reflect(from: subject, withAncestorsRequirements: .disabled)
    }
}

public extension Reflector {
    
    /// Reflect the given subject
    ///
    /// - Parameter subject: Given subject
    /// - Returns: Reflection for the given subject
    
    public static func reflect<T>(from collection: T, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection where T: Collection {
        
        let reflector = Reflector()
        
        return reflector.reflect(from: collection, withAncestorsRequirements: ancestorsRequirements)
    }
    
    /// Reflect the given subject
    ///
    /// - Parameter subject: Given subject
    /// - Returns: Reflection for the given subject
    
    public static func reflect<T>(from collection: T?, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection where T: Collection {
        
        let reflector = Reflector()
        
        return reflector.reflect(from: collection, withAncestorsRequirements: ancestorsRequirements)
    }
    
    /// Reflect the given collection
    ///
    /// - Parameters:
    ///   - subject: Given subject
    ///   - ancestorsRequirements: The requirements to search properties in ancestors
    /// - Returns: Reflection for the given subject
    
    public func reflect<T>(from collection: T, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection where T: Collection {
        
        let type = typeResolver.resolve(from: collection)
        
        let name = String(describing: Mirror(reflecting: collection).subjectType)
        
        let result = Reflection(name: name, value: collection, type: type, children: self.properties(from: collection))
        
        return result
    }
    
    /// Reflect the given collection
    ///
    /// - Parameters:
    ///   - subject: Given subject
    ///   - ancestorsRequirements: The requirements to search properties in ancestors
    /// - Returns: Reflection for the given subject
    
    public func reflect<T>(from collection: T?, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection where T: Collection {
        
        let type = typeResolver.resolve(from: collection)
        
        let name = String(describing: Mirror(reflecting: collection as Any).subjectType)
        
        let result = Reflection(name: name, value: collection as Any, type: type, children: collection == nil ? [] : self.properties(from: collection as Any))
        
        return result
    }
}

public extension Reflector {
    
    /// Find all children in dictionary
    ///
    /// - Parameter mirror: Given dictionary
    /// - Returns: Children
    
    private func properties<K, V>(from dictionaryMirror: Mirror, keyType: K.Type, valueType: V.Type) -> [Reflection] {
        
        return dictionaryMirror.children.enumerated().flatMap { _, attribute in
            
            if let tuple = attribute.value as? (key: K, value: V) {
                
                let type = typeResolver.resolve(from: Mirror(reflecting: tuple.value))
                
                let property = Reflection(name: String(describing: tuple.key), value: tuple.value, type: type)
                
                return property
            }
            
            return nil
        }
    }
    
    /// Find all children in dictionary
    ///
    /// - Parameter mirror: Given dictionary
    /// - Returns: Children
    
    private func properties<K, V>(from dictionary: [K : V]) -> [Reflection] {
        
        let mirror = Mirror(reflecting: dictionary)
        
        return self.properties(from: mirror, keyType: K.self, valueType: V.self)
    }
    
    /// Find all children in dictionary
    ///
    /// - Parameter mirror: Given dictionary
    /// - Returns: Children
    
    private func properties<K, V>(from dictionary: [K : V?]) -> [Reflection] {
        
        let mirror = Mirror(reflecting: dictionary)
        
        return self.properties(from: mirror, keyType: K.self, valueType: V?.self)
    }
    
    /// Find all children in dictionary
    ///
    /// - Parameter mirror: Given dictionary
    /// - Returns: Children
    
    private func properties<K, V>(from dictionary: [K : V]?) -> [Reflection] {
        
        guard let dictionary = dictionary else {
            
            return []
        }
        
        let mirror = Mirror(reflecting: dictionary)
        
        return self.properties(from: mirror, keyType: K.self, valueType: V.self)
    }
    
    /// Find all children in dictionary
    ///
    /// - Parameter mirror: Given dictionary
    /// - Returns: Children
    
    private func properties<K, V>(from dictionary: [K : V?]?) -> [Reflection] {
        
        guard let dictionary = dictionary else {
            
            return []
        }
        
        let mirror = Mirror(reflecting: dictionary)
        
        return self.properties(from: mirror, keyType: K.self, valueType: V?.self)
    }
    
    /// Reflect the given subject
    ///
    /// - Parameter subject: Given subject
    /// - Returns: Reflection for the given subject
    
    public static func reflect<K, V>(from dictionary: [K : V], withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection {
        
        let reflector = Reflector()
        
        return reflector.reflect(from: dictionary, withAncestorsRequirements: ancestorsRequirements)
    }
    
    /// Reflect the given subject
    ///
    /// - Parameter subject: Given subject
    /// - Returns: Reflection for the given subject
    
    public static func reflect<K, V>(from dictionary: [K : V?], withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection {
        
        let reflector = Reflector()
        
        return reflector.reflect(from: dictionary, withAncestorsRequirements: ancestorsRequirements)
    }
    
    /// Reflect the given subject
    ///
    /// - Parameter subject: Given subject
    /// - Returns: Reflection for the given subject
    
    public static func reflect<K, V>(from dictionary: [K : V]?, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection {
        
        let reflector = Reflector()
        
        return reflector.reflect(from: dictionary, withAncestorsRequirements: ancestorsRequirements)
    }
    
    /// Reflect the given subject
    ///
    /// - Parameter subject: Given subject
    /// - Returns: Reflection for the given subject
    
    public static func reflect<K, V>(from dictionary: [K : V?]?, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection {
        
        let reflector = Reflector()
        
        return reflector.reflect(from: dictionary, withAncestorsRequirements: ancestorsRequirements)
    }
    
    /// Reflect the given dictionary
    ///
    /// - Parameters:
    ///   - subject: Given dictionary
    ///   - ancestorsRequirements: The requirements to search properties in ancestors
    /// - Returns: Reflection for the given dictionary
    
    public func reflect<K, V>(from dictionary: [K : V], withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection {
        
        let type = typeResolver.resolve(from: dictionary)
        
        let name = String(describing: Mirror(reflecting: dictionary).subjectType)
        
        let result = Reflection(name: name, value: dictionary, type: type, children: self.properties(from: dictionary))
        
        return result
    }
    
    /// Reflect the given dictionary
    ///
    /// - Parameters:
    ///   - subject: Given dictionary
    ///   - ancestorsRequirements: The requirements to search properties in ancestors
    /// - Returns: Reflection for the given dictionary
    
    public func reflect<K, V>(from dictionary: [K : V?], withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection {
        
        let type = typeResolver.resolve(from: dictionary)
        
        let name = String(describing: Mirror(reflecting: dictionary).subjectType)
        
        let result = Reflection(name: name, value: dictionary, type: type, children: self.properties(from: dictionary))
        
        return result
    }
    
    /// Reflect the given dictionary
    ///
    /// - Parameters:
    ///   - subject: Given dictionary
    ///   - ancestorsRequirements: The requirements to search properties in ancestors
    /// - Returns: Reflection for the given dictionary
    
    public func reflect<K, V>(from dictionary: [K : V]?, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection {
        
        let type = typeResolver.resolve(from: dictionary)
        
        let name = String(describing: Mirror(reflecting: dictionary as Any).subjectType)
        
        let result = Reflection(name: name, value: dictionary as Any, type: type, children: self.properties(from: dictionary))
        
        return result
    }
    
    /// Reflect the given dictionary
    ///
    /// - Parameters:
    ///   - subject: Given dictionary
    ///   - ancestorsRequirements: The requirements to search properties in ancestors
    /// - Returns: Reflection for the given dictionary
    
    public func reflect<K, V>(from dictionary: [K : V?]?, withAncestorsRequirements ancestorsRequirements: AncestorsRequirements = .disabled) -> Reflection {
        
        let type = typeResolver.resolve(from: dictionary)
        
        let name = String(describing: Mirror(reflecting: dictionary as Any).subjectType)
        
        let result = Reflection(name: name, value: dictionary as Any, type: type, children: self.properties(from: dictionary))
        
        return result
    }
}
