//
//  Reflection.swift
//  Reflection
//
//  Created by incetro on 27/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - Reflection

/// Reflection model
public class Reflection {
    
    /// Current name
    public let name: String
    
    /// Current value
    public let value: Any
    
    /// Current type
    public let type: ReflectionType
    
    /// Children for the current Reflection
    public var children: [Reflection] = []
    
    /// Standard initializer
    ///
    /// - Parameters:
    ///   - name: Reflection name
    ///   - value: Reflection value
    ///   - type: Reflection type
    ///   - children: Reflection children
    public init(name: String, value: Any, type: ReflectionType, children: [Reflection] = []) {
        
        self.name     = name
        self.value    = value
        self.type     = type
        self.children = children
    }
}

// MARK: - Types

public extension Reflection {
    
    /// The value type of current Reflection
    public var valueType: ReflectionValueType {
        
        return type.valueType
    }
    
    /// The general type of current Reflection
    public var generalType: ReflectionGeneralType {
        
        return type.generalType
    }
    
    /// All children types of current Reflection
    public var types: [String] {
        
        return children.map {
            
            $0.valueType.description
        }
    }
}

// MARK: - Name

public extension Reflection {
    
    /// The short name of current Reflection
    public var shortName: String {
        
        return self.name.components(separatedBy: ".").last ?? ""
    }
}

// MARK: - Children options

public extension Reflection {
 
    /// Value for the given child name
    ///
    /// - Parameter key: child name
    public subscript (key: String) -> Any? {
        
        let result = children.filter {
            
            $0.name == key
            
        }.first?.value
        
        return result
    }
    
    /// Child for the given name
    ///
    /// - Parameter key: child name
    /// - Returns: Found child
    public func children(_ key: String) -> Reflection? {
        
        let result = children.filter {
            
            $0.name == key
            
        }.first
        
        return result
    }
    
    /// Value for the given child name with type casting
    ///
    /// - Parameter key: child name
    /// - Returns: Value with type casting
    public func value<U>(for key: String) -> U? {
        
        return self[key] as? U
    }
    
    /// All children count
    var childrenCount: Int {
        
        return self.children.count
    }
    
    /// Children names
    var names: [String] {
        
        return children.map {
            
            $0.name
        }
    }
    
    /// Children values
    var values: [Any] {
        
        return children.map {
            
            $0.value
        }
    }
}

// MARK: - Dictionary

public extension Reflection {
    
    /// Convert children to dictionary
    public var toDictionary: [String: Any] {
        
        var result: [String: Any] = [:]
        
        for item in self.children {
            
            result[item.name] = item.value
        }
        
        return result
    }
    
    /// Convert children to NSDictionary
    public var toNSDictionary: NSDictionary {
        
        return self.toDictionary as NSDictionary
    }
}

// MARK: - Simple checkers

public extension Reflection {
    
    /// Check if object is class
    
    var isClass: Bool {
        
        switch type.valueType {
            
        case .class(named: _):
            
            return true
            
        default:
            
            return false
        }
    }
    
    /// Check if object is struct
    
    var isStruct: Bool {
        
        switch type.valueType {
            
        case .struct(named: _):
            
            return true
            
        default:
            
            return false
        }
    }
    
    /// Check if object is enum
    
    var isEnum: Bool {
        
        switch type.valueType {
            
        case .enum(named: _):
            
            return true
            
        default:
            
            return false
        }
    }
    
    /// Check if object is optional
    
    var isOptional: Bool {
        
        return type.generalType == .optional
    }
    
    /// Check if object is array
    
    var isArray: Bool {
        
        switch type.valueType {
            
        case .array(of: _):
            
            return true
            
        default:
            
            return false
        }
    }
    
    /// Check if object is set
    
    var isSet: Bool {
        
        switch type.valueType {
            
        case .set(of: _):
            
            return true
            
        default:
            
            return false
        }
    }
    
    /// Check if object is dictionary
    
    var isDictionary: Bool {
        
        switch type.valueType {
            
        case .dictionary(key: _, value: _):
            
            return true
            
        default:
            
            return false
        }
    }
}
