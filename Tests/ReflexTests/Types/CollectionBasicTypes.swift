//
//  CollectionBasicTypes.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - CollectionBasicTypes

class CollectionBasicTypes: BasicTypes {
    
    var arrayBool: [Bool]                     = [true, true, true, false, false]
    var arrayBoolOptional: [Bool]?            = [true, true, true, false, false]
    var arrayBoolImplicitlyUnwrapped: [Bool]! = [true, true, true, false, false]
    
    var arrayInt8: [Int8]                     = [1, 2, 3, 4, 5]
    var arrayInt8Optional: [Int8]?            = [1, 2, 3, 4, 5]
    var arrayInt8ImplicitlyUnwrapped: [Int8]! = [1, 2, 3, 4, 5]
    
    var arrayInt16: [Int16]                     = [1, 2, 3, 4, 5]
    var arrayInt16Optional: [Int16]?            = [1, 2, 3, 4, 5]
    var arrayInt16ImplicitlyUnwrapped: [Int16]! = [1, 2, 3, 4, 5]
    
    var arrayInt32: [Int32]                     = [1, 2, 3, 4, 5]
    var arrayInt32Optional: [Int32]?            = [1, 2, 3, 4, 5]
    var arrayInt32ImplicitlyUnwrapped: [Int32]! = [1, 2, 3, 4, 5]
    
    var arrayInt64: [Int64]                     = [1, 2, 3, 4, 5]
    var arrayInt64Optional: [Int64]?            = [1, 2, 3, 4, 5]
    var arrayInt64ImplicitlyUnwrapped: [Int64]! = [1, 2, 3, 4, 5]
    
    var arrayUInt8: [UInt8]                     = [1, 2, 3, 4, 5]
    var arrayUInt8Optional: [UInt8]?            = [1, 2, 3, 4, 5]
    var arrayUInt8ImplicitlyUnwrapped: [UInt8]! = [1, 2, 3, 4, 5]
    
    var arrayUInt16: [UInt16]                     = [1, 2, 3, 4, 5]
    var arrayUInt16Optional: [UInt16]?            = [1, 2, 3, 4, 5]
    var arrayUInt16ImplicitlyUnwrapped: [UInt16]! = [1, 2, 3, 4, 5]
    
    var arrayUInt32: [UInt32]                     = [1, 2, 3, 4, 5]
    var arrayUInt32Optional: [UInt32]?            = [1, 2, 3, 4, 5]
    var arrayUInt32ImplicitlyUnwrapped: [UInt32]! = [1, 2, 3, 4, 5]
    
    var arrayUInt64: [UInt64]                     = [1, 2, 3, 4, 5]
    var arrayUInt64Optional: [UInt64]?            = [1, 2, 3, 4, 5]
    var arrayUInt64ImplicitlyUnwrapped: [UInt64]! = [1, 2, 3, 4, 5]
    
    var arrayInt: [Int]                     = [1, 2, 3, 4, 5]
    var arrayIntOptional: [Int]?            = [1, 2, 3, 4, 5]
    var arrayIntImplicitlyUnwrapped: [Int]! = [1, 2, 3, 4, 5]
    
    var arrayUInt: [UInt]                     = [1, 2, 3, 4, 5]
    var arrayUIntOptional: [UInt]?            = [1, 2, 3, 4, 5]
    var arrayUIntImplicitlyUnwrapped: [UInt]! = [1, 2, 3, 4, 5]
    
    var arrayDouble: [Double]                     = [1, 2, 3, 4, 5]
    var arrayDoubleOptional: [Double]?            = [1, 2, 3, 4, 5]
    var arrayDoubleImplicitlyUnwrapped: [Double]! = [1, 2, 3, 4, 5]
    
    var arrayFloat: [Float]                     = [1, 2, 3, 4, 5]
    var arrayFloatOptional: [Float]?            = [1, 2, 3, 4, 5]
    var arrayFloatImplicitlyUnwrapped: [Float]! = [1, 2, 3, 4, 5]
    
    var arrayString: [String]                     = ["1", "2", "3", "4", "5"]
    var arrayStringOptional: [String]?            = ["1", "2", "3", "4", "5"]
    var arrayStringImplicitlyUnwrapped: [String]! = ["1", "2", "3", "4", "5"]
    
    var arrayAny: [Any]                     = [1, 2, 3, 4, 5]
    var arrayAnyOptional: [Any]?            = []
    var arrayAnyImplicitlyUnwrapped: [Any]! = []
    
    var dictBool: [String: Bool]                     = ["1" : true, "2" : true, "3" : true, "4" : false, "5" : false]
    var dictBoolOptional: [String: Bool]?            = ["1" : true, "2" : true, "3" : true, "4" : false, "5" : false]
    var dictBoolImplicitlyUnwrapped: [String: Bool]! = ["1" : true, "2" : true, "3" : true, "4" : false, "5" : false]
    
    var dictInt8: [String: Int8]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictInt8Optional: [String: Int8]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictInt8ImplicitlyUnwrapped: [String: Int8]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictInt16: [String: Int16]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictInt16Optional: [String: Int16]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictInt16ImplicitlyUnwrapped: [String: Int16]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictInt32: [String: Int32]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictInt32Optional: [String: Int32]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictInt32ImplicitlyUnwrapped: [String: Int32]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictInt64: [String: Int64]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictInt64Optional: [String: Int64]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictInt64ImplicitlyUnwrapped: [String: Int64]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictUInt8: [String: UInt8]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUInt8Optional: [String: UInt8]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUInt8ImplicitlyUnwrapped: [String: UInt8]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictUInt16: [String: UInt16]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUInt16Optional: [String: UInt16]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUInt16ImplicitlyUnwrapped: [String: UInt16]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictUInt32: [String: UInt32]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUInt32Optional: [String: UInt32]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUInt32ImplicitlyUnwrapped: [String: UInt32]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictUInt64: [String: UInt64]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUInt64Optional: [String: UInt64]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUInt64ImplicitlyUnwrapped: [String: UInt64]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictInt: [String: Int]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictIntOptional: [String: Int]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictIntImplicitlyUnwrapped: [String: Int]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictUInt: [String: UInt]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUIntOptional: [String: UInt]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictUIntImplicitlyUnwrapped: [String: UInt]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictDouble: [String: Double]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictDoubleOptional: [String: Double]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictDoubleImplicitlyUnwrapped: [String: Double]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictFloat: [String: Float]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictFloatOptional: [String: Float]?            = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictFloatImplicitlyUnwrapped: [String: Float]! = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    
    var dictString: [String: String]                     = ["1" : "1", "2" : "2", "3" : "3", "4" : "4", "5" : "5"]
    var dictStringOptional: [String: String]?            = ["1" : "1", "2" : "2", "3" : "3", "4" : "4", "5" : "5"]
    var dictStringImplicitlyUnwrapped: [String: String]! = ["1" : "1", "2" : "2", "3" : "3", "4" : "4", "5" : "5"]
    
    var dictAny: [String: Any]                     = ["1" : 1, "2" : 2, "3" : 3, "4" : 4, "5" : 5]
    var dictAnyOptional: [String: Any]?            = [:]
    var dictAnyImplicitlyUnwrapped: [String: Any]! = [:]
}
