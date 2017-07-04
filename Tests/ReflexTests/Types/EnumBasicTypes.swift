//
//  EnumBasicTypes.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

enum Enum {
    
    case `default`
    case another
}

enum EnumInt8: Int8 {
    
    case `default`
    case another
}

enum EnumInt16: Int16 {
    
    case `default`
    case another
}

enum EnumInt32: Int32 {
    
    case `default`
    case another
}

enum EnumInt64: Int64 {
    
    case `default`
    case another
}

enum EnumUInt8: UInt8 {
    
    case `default`
    case another
}

enum EnumUInt16: UInt16 {
    
    case `default`
    case another
}

enum EnumUInt32: UInt32 {
    
    case `default`
    case another
}

enum EnumUInt64: UInt64 {
    
    case `default`
    case another
}

enum EnumInt: Int {
    
    case `default`
    case another
}

enum EnumUInt: UInt {
    
    case `default`
    case another
}

enum EnumDouble: Double {
    
    case `default`
    case another
}

enum EnumFloat: Float {
    
    case `default`
    case another
}

enum EnumString: String {
    
    case `default`
    case another
}

// MARK: - EnumBasicTypes

class EnumBasicTypes: CollectionBasicTypes {
    
    var `enum`: Enum = .another
    var enumOptional: Enum? = .another
    var enumImplicitlyUnwrapped: Enum! = .another
    
    var enumInt8: EnumInt8 = .another
    var enumInt8Optional: EnumInt8? = .another
    var enumInt8ImplicitlyUnwrapped: EnumInt8! = .another
    
    var enumInt16: EnumInt16 = .another
    var enumInt16Optional: EnumInt16? = .another
    var enumInt16ImplicitlyUnwrapped: EnumInt16! = .another
    
    var enumInt32: EnumInt32 = .another
    var enumInt32Optional: EnumInt32? = .another
    var enumInt32ImplicitlyUnwrapped: EnumInt32! = .another
    
    var enumInt64: EnumInt64 = .another
    var enumInt64Optional: EnumInt64? = .another
    var enumInt64ImplicitlyUnwrapped: EnumInt64! = .another
    
    var enumUInt8: EnumUInt8 = .another
    var enumUInt8Optional: EnumUInt8? = .another
    var enumUInt8ImplicitlyUnwrapped: EnumUInt8! = .another
    
    var enumUInt16: EnumUInt16 = .another
    var enumUInt16Optional: EnumUInt16? = .another
    var enumUInt16ImplicitlyUnwrapped: EnumUInt16! = .another
    
    var enumUInt32: EnumUInt32 = .another
    var enumUInt32Optional: EnumUInt32? = .another
    var enumUInt32ImplicitlyUnwrapped: EnumUInt32! = .another
    
    var enumUInt64: EnumUInt64 = .another
    var enumUInt64Optional: EnumUInt64? = .another
    var enumUInt64ImplicitlyUnwrapped: EnumUInt64! = .another
    
    var enumInt: EnumInt = .another
    var enumIntOptional: EnumInt? = .another
    var enumIntImplicitlyUnwrapped: EnumInt! = .another
    
    var enumUInt: EnumUInt = .another
    var enumUIntOptional: EnumUInt? = .another
    var enumUIntImplicitlyUnwrapped: EnumUInt! = .another
    
    var enumDouble: EnumDouble = .another
    var enumDoubleOptional: EnumDouble? = .another
    var enumDoubleImplicitlyUnwrapped: EnumDouble! = .another
    
    var enumFloat: EnumFloat = .another
    var enumFloatOptional: EnumFloat? = .another
    var enumFloatImplicitlyUnwrapped: EnumFloat! = .another
    
    var enumString: EnumString = .another
    var enumStringOptional: EnumString? = .another
    var enumStringImplicitlyUnwrapped: EnumString! = .another
}
