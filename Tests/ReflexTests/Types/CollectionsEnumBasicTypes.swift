//
//  CollectionsEnumBasicTypes.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - CollectionsEnumBasicTypes

class CollectionsEnumBasicTypes: EnumBasicTypes {
    
    var arrayEnum: [Enum]                     = [.default, .another]
    var arrayEnumOptional: [Enum]?            = [.default, .another]
    var arrayEnumImplicitlyUnwrapped: [Enum]! = [.default, .another]
    
    var arrayEnumInt8: [EnumInt8]                     = [.default, .another]
    var arrayEnumInt8Optional: [EnumInt8]?            = [.default, .another]
    var arrayEnumInt8ImplicitlyUnwrapped: [EnumInt8]! = [.default, .another]
    
    var arrayEnumInt16: [EnumInt16]                     = [.default, .another]
    var arrayEnumInt16Optional: [EnumInt16]?            = [.default, .another]
    var arrayEnumInt16ImplicitlyUnwrapped: [EnumInt16]! = [.default, .another]
    
    var arrayEnumInt32: [EnumInt32]                     = [.default, .another]
    var arrayEnumInt32Optional: [EnumInt32]?            = [.default, .another]
    var arrayEnumInt32ImplicitlyUnwrapped: [EnumInt32]! = [.default, .another]
    
    var arrayEnumInt64: [EnumInt64]                     = [.default, .another]
    var arrayEnumInt64Optional: [EnumInt64]?            = [.default, .another]
    var arrayEnumInt64ImplicitlyUnwrapped: [EnumInt64]! = [.default, .another]
    
    var arrayEnumUInt8: [EnumUInt8]                     = [.default, .another]
    var arrayEnumUInt8Optional: [EnumUInt8]?            = [.default, .another]
    var arrayEnumUInt8ImplicitlyUnwrapped: [EnumUInt8]! = [.default, .another]
    
    var arrayEnumUInt16: [EnumUInt16]                     = [.default, .another]
    var arrayEnumUInt16Optional: [EnumUInt16]?            = [.default, .another]
    var arrayEnumUInt16ImplicitlyUnwrapped: [EnumUInt16]! = [.default, .another]
    
    var arrayEnumUInt32: [EnumUInt32]                     = [.default, .another]
    var arrayEnumUInt32Optional: [EnumUInt32]?            = [.default, .another]
    var arrayEnumUInt32ImplicitlyUnwrapped: [EnumUInt32]! = [.default, .another]
    
    var arrayEnumUInt64: [EnumUInt64]                     = [.default, .another]
    var arrayEnumUInt64Optional: [EnumUInt64]?            = [.default, .another]
    var arrayEnumUInt64ImplicitlyUnwrapped: [EnumUInt64]! = [.default, .another]
    
    var arrayEnumInt: [EnumInt]                     = [.default, .another]
    var arrayEnumIntOptional: [EnumInt]?            = [.default, .another]
    var arrayEnumIntImplicitlyUnwrapped: [EnumInt]! = [.default, .another]
    
    var arrayEnumUInt: [EnumUInt]                     = [.default, .another]
    var arrayEnumUIntOptional: [EnumUInt]?            = [.default, .another]
    var arrayEnumUIntImplicitlyUnwrapped: [EnumUInt]! = [.default, .another]
    
    var arrayEnumDouble: [EnumDouble]                     = [.default, .another]
    var arrayEnumDoubleOptional: [EnumDouble]?            = [.default, .another]
    var arrayEnumDoubleImplicitlyUnwrapped: [EnumDouble]! = [.default, .another]
    
    var arrayEnumFloat: [EnumFloat]                     = [.default, .another]
    var arrayEnumFloatOptional: [EnumFloat]?            = [.default, .another]
    var arrayEnumFloatImplicitlyUnwrapped: [EnumFloat]! = [.default, .another]
    
    var arrayEnumString: [EnumString]                     = [.default, .another]
    var arrayEnumStringOptional: [EnumString]?            = [.default, .another]
    var arrayEnumStringImplicitlyUnwrapped: [EnumString]! = [.default, .another]
    
    var dictEnum: [String: Enum]                     = ["default" : .default, "another" : .another]
    var dictEnumOptional: [String: Enum]?            = ["default" : .default, "another" : .another]
    var dictEnumImplicitlyUnwrapped: [String: Enum]! = ["default" : .default, "another" : .another]
    
    var dictEnumInt8: [String: EnumInt8]                     = ["default" : .default, "another" : .another]
    var dictEnumInt8Optional: [String: EnumInt8]?            = ["default" : .default, "another" : .another]
    var dictEnumInt8ImplicitlyUnwrapped: [String: EnumInt8]! = ["default" : .default, "another" : .another]
    
    var dictEnumInt16: [String: EnumInt16]                     = ["default" : .default, "another" : .another]
    var dictEnumInt16Optional: [String: EnumInt16]?            = ["default" : .default, "another" : .another]
    var dictEnumInt16ImplicitlyUnwrapped: [String: EnumInt16]! = ["default" : .default, "another" : .another]
    
    var dictEnumInt32: [String: EnumInt32]                     = ["default" : .default, "another" : .another]
    var dictEnumInt32Optional: [String: EnumInt32]?            = ["default" : .default, "another" : .another]
    var dictEnumInt32ImplicitlyUnwrapped: [String: EnumInt32]! = ["default" : .default, "another" : .another]
    
    var dictEnumInt64: [String: EnumInt64]                     = ["default" : .default, "another" : .another]
    var dictEnumInt64Optional: [String: EnumInt64]?            = ["default" : .default, "another" : .another]
    var dictEnumInt64ImplicitlyUnwrapped: [String: EnumInt64]! = ["default" : .default, "another" : .another]
    
    var dictEnumUInt8: [String: EnumUInt8]                     = ["default" : .default, "another" : .another]
    var dictEnumUInt8Optional: [String: EnumUInt8]?            = ["default" : .default, "another" : .another]
    var dictEnumUInt8ImplicitlyUnwrapped: [String: EnumUInt8]! = ["default" : .default, "another" : .another]
    
    var dictEnumUInt16: [String: EnumUInt16]                     = ["default" : .default, "another" : .another]
    var dictEnumUInt16Optional: [String: EnumUInt16]?            = ["default" : .default, "another" : .another]
    var dictEnumUInt16ImplicitlyUnwrapped: [String: EnumUInt16]! = ["default" : .default, "another" : .another]
    
    var dictEnumUInt32: [String: EnumUInt32]                     = ["default" : .default, "another" : .another]
    var dictEnumUInt32Optional: [String: EnumUInt32]?            = ["default" : .default, "another" : .another]
    var dictEnumUInt32ImplicitlyUnwrapped: [String: EnumUInt32]! = ["default" : .default, "another" : .another]
    
    var dictEnumUInt64: [String: EnumUInt64]                     = ["default" : .default, "another" : .another]
    var dictEnumUInt64Optional: [String: EnumUInt64]?            = ["default" : .default, "another" : .another]
    var dictEnumUInt64ImplicitlyUnwrapped: [String: EnumUInt64]! = ["default" : .default, "another" : .another]
    
    var dictEnumInt: [String: EnumInt]                     = ["default" : .default, "another" : .another]
    var dictEnumIntOptional: [String: EnumInt]?            = ["default" : .default, "another" : .another]
    var dictEnumIntImplicitlyUnwrapped: [String: EnumInt]! = ["default" : .default, "another" : .another]
    
    var dictEnumUInt: [String: EnumUInt]                     = ["default" : .default, "another" : .another]
    var dictEnumUIntOptional: [String: EnumUInt]?            = ["default" : .default, "another" : .another]
    var dictEnumUIntImplicitlyUnwrapped: [String: EnumUInt]! = ["default" : .default, "another" : .another]
    
    var dictEnumDouble: [String: EnumDouble]                     = ["default" : .default, "another" : .another]
    var dictEnumDoubleOptional: [String: EnumDouble]?            = ["default" : .default, "another" : .another]
    var dictEnumDoubleImplicitlyUnwrapped: [String: EnumDouble]! = ["default" : .default, "another" : .another]
    
    var dictEnumFloat: [String: EnumFloat]                     = ["default" : .default, "another" : .another]
    var dictEnumFloatOptional: [String: EnumFloat]?            = ["default" : .default, "another" : .another]
    var dictEnumFloatImplicitlyUnwrapped: [String: EnumFloat]! = ["default" : .default, "another" : .another]
    
    var dictEnumString: [String: EnumString]                     = ["default" : .default, "another" : .another]
    var dictEnumStringOptional: [String: EnumString]?            = ["default" : .default, "another" : .another]
    var dictEnumStringImplicitlyUnwrapped: [String: EnumString]! = ["default" : .default, "another" : .another]
}
