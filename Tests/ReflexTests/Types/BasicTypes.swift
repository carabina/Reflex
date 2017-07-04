//
//  BasicTypes.swift
//  Reflection
//
//  Created by incetro on 27/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - BasicTypes

class BasicTypes {
    
    var bool: Bool = true
    var boolOptional: Bool? = true
    var boolImplicitlyUnwrapped: Bool! = true
    
    var int8: Int8 = 10
    var int8Optional: Int8? = 10
    var int8ImplicitlyUnwrapped: Int8! = 10
    
    var int16: Int16 = 10
    var int16Optional: Int16? = 10
    var int16ImplicitlyUnwrapped: Int16! = 10
    
    var int32: Int32 = 10
    var int32Optional: Int32? = 10
    var int32ImplicitlyUnwrapped: Int32! = 10
    
    var int64: Int64 = 10
    var int64Optional: Int64? = 10
    var int64ImplicitlyUnwrapped: Int64! = 10
    
    var uInt8: UInt8 = 10
    var uInt8Optional: UInt8? = 10
    var uInt8ImplicitlyUnwrapped: UInt8! = 10
    
    var uInt16: UInt16 = 10
    var uInt16Optional: UInt16? = 10
    var uInt16ImplicitlyUnwrapped: UInt16! = 10
    
    var uInt32: UInt32 = 10
    var uInt32Optional: UInt32? = 10
    var uInt32ImplicitlyUnwrapped: UInt32! = 10
    
    var uInt64: UInt64 = 10
    var uInt64Optional: UInt64? = 10
    var uInt64ImplicitlyUnwrapped: UInt64! = 10
    
    var int: Int = 10
    var intOptional: Int? = 10
    var intImplicitlyUnwrapped: Int! = 10
    
    var uInt: UInt = 10
    var uIntOptional: UInt? = 10
    var uIntImplicitlyUnwrapped: UInt! = 10
    
    var tuple: (Int, String) = (0, "1")
    var tupleOptional: (Int, String)? = (0, "1")
    var tupleImplicitlyUnwrapped: (Int, String)! = (0, "1")
    
    var double: Double = 1.1
    var doubleOptional: Double? = 1.1
    var doubleImplicitlyUnwrapped: Double! = 1.1
    
    var float: Float = 1.11
    var floatOptional: Float? = 1.11
    var floatImplicitlyUnwrapped: Float! = 1.11
    
    var string: String = "string"
    var stringOptional: String? = "string"
    var stringImplicitlyUnwrapped: String! = "string"
    
    var any: Any = true
    var anyOptional: Any?
    var anyImplicitlyUnwrapped: Any!
}
