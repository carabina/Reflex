//
//  TypeResolver.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - TypeResolver

internal class TypeResolver {
    
    // MARK: - Internal
    
    internal enum TypeKeys: String {
        
        case optional           = "Optional<"
        case implicitlyOptional = "ImplicitlyUnwrappedOptional<"
        case set                = "Set<"
        case array              = "Array<"
        case dictionary         = "Dictionary<"
        case tuple              = "("
    }
    
    /// Makes type's description for the given collection
    ///
    /// - Parameter mirror: Given collection
    /// - Returns: ReflectionType for the given collection
    
    internal func resolve<T>(from collection: T) -> ReflectionType where T: Collection {
        
        if let first = collection.first {
            
            let elemMirror       = Mirror(reflecting: first)
            let collectionMirror = Mirror(reflecting: collection)
            
            let elemType  = self.resolve(from: elemMirror)
            let collectionType = self.resolve(from: collectionMirror)
            
            switch collectionType.valueType {
                
            case .array(of: _):
                
                return ReflectionType(generalType: collectionType.generalType, valueType: .array(of: elemType.valueType))
                
            case .set(of: _):
                
                return ReflectionType(generalType: collectionType.generalType, valueType: .set(of: elemType.valueType))
                
            default:
                
                return ReflectionType(generalType: collectionType.generalType, valueType: .collection(of: elemType.valueType))
            }
            
        } else {
            
            return self.resolve(from: Mirror(reflecting: collection))
        }
    }
    
    /// Makes type's description for the given collection
    ///
    /// - Parameter mirror: Given collection
    /// - Returns: ReflectionType for the given collection
    
    internal func resolve<T>(from collection: T?) -> ReflectionType where T: Collection {
        
        if let first = collection?.first {
            
            let elemMirror       = Mirror(reflecting: first)
            let collectionMirror = Mirror(reflecting: collection as Any)
            
            let elemType  = self.resolve(from: elemMirror)
            let collectionType = self.resolve(from: collectionMirror)
            
            switch collectionType.valueType {
                
            case .array(of: _):
                
                return ReflectionType(generalType: collectionType.generalType, valueType: .array(of: elemType.valueType))
                
            case .set(of: _):
                
                return ReflectionType(generalType: collectionType.generalType, valueType: .set(of: elemType.valueType))
                
            default:
                
                return ReflectionType(generalType: collectionType.generalType, valueType: .collection(of: elemType.valueType))
            }
            
        } else {
            
            return self.resolve(from: Mirror(reflecting: collection as Any))
        }
    }
    
    /// Makes type's description for the given mirror
    ///
    /// - Parameter mirror: Given mirror
    /// - Returns: ReflectionType for the given mirror
    
    internal func resolve(from mirror: Mirror) -> ReflectionType {
        
        let generalType = self.resolveGeneralType(from: mirror)
        
        let basicType: ReflectionValueType = self.resolveComplexType(from: mirror)
        
        return ReflectionType(generalType: generalType, valueType: basicType)
    }
    
    /// Unwrap given string for short type
    ///
    /// `ImplicitlyUnwrappedOptional<Int> -> Int`
    ///
    /// `Optional<Int> -> Int`
    ///
    /// - Parameter string: Given string
    /// - Returns: Short type's description
    
    internal func unwrapType(from string: String) -> String {
        
        if string.hasPrefix(TypeKeys.optional.rawValue) {
            
            return String(string.replacingOccurrences(of: TypeKeys.optional.rawValue, with: "").characters.dropLast())
        }
        
        if string.hasPrefix(TypeKeys.implicitlyOptional.rawValue) {
            
            return String(string.replacingOccurrences(of: TypeKeys.implicitlyOptional.rawValue, with: "").characters.dropLast())
        }
        
        return string
    }
    
    // MARK: - Private
    
    /// Determine ReflectionValueType for the given string
    ///
    /// - Parameter string: Basic type (Bool, Int, etc...)
    /// - Returns: ReflectionValueType for the given string
    
    private func resolveBasicType(from string: String) -> ReflectionValueType {
        
        return [
            
            "Any"    : .any,
            "Bool"   : .bool,
            "Int8"   : .int8,
            "Int16"  : .int16,
            "Int32"  : .int32,
            "Int64"  : .int64,
            "UInt8"  : .uInt8,
            "UInt16" : .uInt16,
            "UInt32" : .uInt32,
            "UInt64" : .uInt64,
            "Int"    : .int,
            "UInt"   : .uInt,
            "Double" : .double,
            "Float"  : .float,
            "String" : .string
            
        ][string] ?? self.resolveCollectionType(from: string)
    }
    
    /// Determine ReflectionValueType for the given string
    ///
    /// - Parameter string: String with collection name
    /// - Returns: ReflectionValueType for the given string
    
    private func resolveCollectionType(from string: String) -> ReflectionValueType {
        
        if string.hasPrefix(TypeKeys.array.rawValue) {
            
            let typeString = String(string.replacingOccurrences(of: TypeKeys.array.rawValue, with: "").characters.dropLast())
            
            return .array(of: self.resolveBasicType(from: typeString))
        }
        
        if string.hasPrefix(TypeKeys.set.rawValue) {
            
            let typeString = String(string.replacingOccurrences(of: TypeKeys.set.rawValue, with: "").characters.dropLast())
            
            return .set(of: self.resolveBasicType(from: typeString))
        }
        
        if string.hasPrefix(TypeKeys.dictionary.rawValue) {
            
            let typesArray = String(string.replacingOccurrences(of: TypeKeys.dictionary.rawValue, with: "").characters.dropLast()).replacingOccurrences(of: " ", with: "").components(separatedBy: ",")
            
            let keyType   = typesArray[0]
            let valueType = typesArray[1]
            
            return .dictionary(key: self.resolveBasicType(from: keyType), value: self.resolveBasicType(from: valueType))
        }
        
        if string.hasPrefix(TypeKeys.tuple.rawValue) {
            
            let typesArray = String(string.replacingOccurrences(of: TypeKeys.tuple.rawValue, with: "").characters.dropLast()).replacingOccurrences(of: " ", with: "").components(separatedBy: ",")
            
            let basicTypes = typesArray.map {
                
                self.resolveBasicType(from: $0)
            }
            
            return .tuple(of: basicTypes)
        }
        
        return .custom(named: string)
    }
    
    /// Determine ReflectionValueType for the given mirror
    ///
    /// - Parameter mirror: Given mirror
    /// - Returns: ReflectionValueType for the given mirror
    
    private func resolveComplexType(from mirror: Mirror) -> ReflectionValueType {
        
        let typename = String(describing: mirror.subjectType)
        
        guard let style = mirror.displayStyle else {
            
            return self.resolveBasicType(from: typename)
        }
        
        switch style {
            
        case .class:
            
            return ReflectionValueType.class(named: typename)
            
        case .struct:
            
            return ReflectionValueType.struct(named: typename)
            
        case .enum:
            
            if typename.hasPrefix(TypeKeys.implicitlyOptional.rawValue) {
                
                if let child = mirror.children.first, child.label != nil {
                    
                    return self.resolveComplexType(from: Mirror(reflecting: child.value))
                }
                
                return self.resolveBasicType(from: self.unwrapType(from: typename))
            }
            
            return ReflectionValueType.enum(named: typename)
            
        default:
            
            if style == .optional, let child = mirror.children.first, child.label != nil {
                
                return self.resolveComplexType(from: Mirror(reflecting: child.value))
                
            } else {
                
                return self.resolveBasicType(from: self.unwrapType(from: typename))
            }
        }
    }
    
    /// Determine general type for the given mirror
    ///
    /// - Parameter mirror: Given mirror
    /// - Returns: General type
    
    private func resolveGeneralType(from mirror: Mirror) -> ReflectionGeneralType {
        
        let string = String(describing: mirror.subjectType)
        
        if string.hasPrefix(TypeKeys.optional.rawValue) {
            
            return .optional
        }
        
        if string.hasPrefix(TypeKeys.implicitlyOptional.rawValue) {
            
            return .implicitlyUnwrapped
        }
        
        return .simple
    }
    
    /// Makes type's description for the given mirror (with dictionary)
    ///
    /// - Parameters:
    ///   - key: Dictionary's key
    ///   - value: Dictionary's value
    ///   - dictionaryMirror:  Mirror with dictionary
    /// - Returns: ReflectionType
    
    private func resolve<K, V>(from key: K, value: V, dictionaryMirror: Mirror) -> ReflectionType {
        
        let keyMirror        = Mirror(reflecting: key)
        let valueMirror      = Mirror(reflecting: value)
        
        let keyType        = self.resolve(from: keyMirror)
        let valueType      = self.resolve(from: valueMirror)
        let collectionType = self.resolve(from: dictionaryMirror)
        
        return ReflectionType(generalType: collectionType.generalType, valueType: .dictionary(key: keyType.valueType, value: valueType.valueType))
    }
    
    /// Makes type's description for the given dict
    ///
    /// - Parameter mirror: Given dict
    /// - Returns: ReflectionType for the given dict
    
    internal func resolve<K, V>(from dictionary: [K : V]) -> ReflectionType {
        
        if let key = dictionary.first?.key, let value = dictionary.first?.value {
            
            let dictionaryMirror = Mirror(reflecting: dictionary)
            
            return self.resolve(from: key, value: value, dictionaryMirror: dictionaryMirror)
            
        } else {
            
            return self.resolve(from: Mirror(reflecting: dictionary))
        }
    }
    
    /// Makes type's description for the given dict
    ///
    /// - Parameter mirror: Given dict
    /// - Returns: ReflectionType for the given dict
    
    internal func resolve<K, V>(from dictionary: [K : V?]) -> ReflectionType {
        
        if let key = dictionary.first?.key, let value = dictionary.first?.value {
            
            let dictionaryMirror = Mirror(reflecting: dictionary)
            
            return self.resolve(from: key, value: value, dictionaryMirror: dictionaryMirror)
            
        } else {
            
            return self.resolve(from: Mirror(reflecting: dictionary))
        }
    }
    
    /// Makes type's description for the given dict
    ///
    /// - Parameter mirror: Given dict
    /// - Returns: ReflectionType for the given dict
    
    internal func resolve<K, V>(from dictionary: [K : V?]?) -> ReflectionType {
        
        if let dict = dictionary, let key = dict.first?.key, let value = dict.first?.value {
            
            let dictionaryMirror = Mirror(reflecting: dictionary as Any)
            
            return self.resolve(from: key, value: value, dictionaryMirror: dictionaryMirror)
            
        } else {
            
            return self.resolve(from: Mirror(reflecting: dictionary as Any))
        }
    }
    
    /// Makes type's description for the given dict
    ///
    /// - Parameter mirror: Given dict
    /// - Returns: ReflectionType for the given dict
    
    internal func resolve<K, V>(from dictionary: [K : V]?) -> ReflectionType {
        
        if let key = dictionary?.first?.key, let value = dictionary?.first?.value {
            
            let dictionaryMirror = Mirror(reflecting: dictionary as Any)
            
            return self.resolve(from: key, value: value, dictionaryMirror: dictionaryMirror)
            
        } else {
            
            return self.resolve(from: Mirror(reflecting: dictionary as Any))
        }
    }
}
