//
//  ArrayBasicTypeTests.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import XCTest
import Reflex

// MARK: - ArrayBasicTypeTests

class ArrayBasicTypeTests: XCTestCase {
    
    func testThatDisabledReflectionWorksCorrectWithBoolArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayBool: [Bool] = reflection.value(for: "arrayBool") else {
            
            XCTFail("Cannot get 'Array<Bool>' type from reflection")
            return
        }
        
        guard let arrayBoolOptionalFirst = types.arrayBoolOptional, let arrayBoolOptionalSecond: [Bool] = reflection.value(for: "arrayBoolOptional") else {
            
            XCTFail("Cannot get 'Array<Bool>' type from reflection")
            return
        }
        
        guard let arrayBoolImplicitlyUnwrapped: [Bool] = reflection.value(for: "arrayBoolImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<Bool>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayBool, arrayBool)
        XCTAssertEqual(arrayBoolOptionalFirst, arrayBoolOptionalSecond)
        XCTAssertEqual(types.arrayBoolImplicitlyUnwrapped, arrayBoolImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .bool), reflection.children("arrayBool")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .bool), reflection.children("arrayBoolOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .bool), reflection.children("arrayBoolImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayBool")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayBoolOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayBoolImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt8ArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayInt8: [Int8] = reflection.value(for: "arrayInt8") else {
            
            XCTFail("Cannot get 'Array<Int8>' type from reflection")
            return
        }
        
        guard let arrayInt8OptionalFirst = types.arrayInt8Optional, let arrayInt8OptionalSecond: [Int8] = reflection.value(for: "arrayInt8Optional") else {
            
            XCTFail("Cannot get 'Array<Int8>' type from reflection")
            return
        }
        
        guard let arrayInt8ImplicitlyUnwrapped: [Int8] = reflection.value(for: "arrayInt8ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<Int8>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayInt8, arrayInt8)
        XCTAssertEqual(arrayInt8OptionalFirst, arrayInt8OptionalSecond)
        XCTAssertEqual(types.arrayInt8ImplicitlyUnwrapped, arrayInt8ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .int8), reflection.children("arrayInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int8), reflection.children("arrayInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int8), reflection.children("arrayInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt16ArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayInt16: [Int16] = reflection.value(for: "arrayInt16") else {
            
            XCTFail("Cannot get 'Array<Int16>' type from reflection")
            return
        }
        
        guard let arrayInt16OptionalFirst = types.arrayInt16Optional, let arrayInt16OptionalSecond: [Int16] = reflection.value(for: "arrayInt16Optional") else {
            
            XCTFail("Cannot get 'Array<Int16>' type from reflection")
            return
        }
        
        guard let arrayInt16ImplicitlyUnwrapped: [Int16] = reflection.value(for: "arrayInt16ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<Int16>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayInt16, arrayInt16)
        XCTAssertEqual(arrayInt16OptionalFirst, arrayInt16OptionalSecond)
        XCTAssertEqual(types.arrayInt16ImplicitlyUnwrapped, arrayInt16ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .int16), reflection.children("arrayInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int16), reflection.children("arrayInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int16), reflection.children("arrayInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt32ArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayInt32: [Int32] = reflection.value(for: "arrayInt32") else {
            
            XCTFail("Cannot get 'Array<Int32>' type from reflection")
            return
        }
        
        guard let arrayInt32OptionalFirst = types.arrayInt32Optional, let arrayInt32OptionalSecond: [Int32] = reflection.value(for: "arrayInt32Optional") else {
            
            XCTFail("Cannot get 'Array<Int32>' type from reflection")
            return
        }
        
        guard let arrayInt32ImplicitlyUnwrapped: [Int32] = reflection.value(for: "arrayInt32ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<Int32>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayInt32, arrayInt32)
        XCTAssertEqual(arrayInt32OptionalFirst, arrayInt32OptionalSecond)
        XCTAssertEqual(types.arrayInt32ImplicitlyUnwrapped, arrayInt32ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .int32), reflection.children("arrayInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int32), reflection.children("arrayInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int32), reflection.children("arrayInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt64ArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayInt64: [Int64] = reflection.value(for: "arrayInt64") else {
            
            XCTFail("Cannot get 'Array<Int64>' type from reflection")
            return
        }
        
        guard let arrayInt64OptionalFirst = types.arrayInt64Optional, let arrayInt64OptionalSecond: [Int64] = reflection.value(for: "arrayInt64Optional") else {
            
            XCTFail("Cannot get 'Array<Int64>' type from reflection")
            return
        }
        
        guard let arrayInt64ImplicitlyUnwrapped: [Int64] = reflection.value(for: "arrayInt64ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<Int64>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayInt64, arrayInt64)
        XCTAssertEqual(arrayInt64OptionalFirst, arrayInt64OptionalSecond)
        XCTAssertEqual(types.arrayInt64ImplicitlyUnwrapped, arrayInt64ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .int64), reflection.children("arrayInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int64), reflection.children("arrayInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int64), reflection.children("arrayInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt8ArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayUInt8: [UInt8] = reflection.value(for: "arrayUInt8") else {
            
            XCTFail("Cannot get 'Array<UInt8>' type from reflection")
            return
        }
        
        guard let arrayUInt8OptionalFirst = types.arrayUInt8Optional, let arrayUInt8OptionalSecond: [UInt8] = reflection.value(for: "arrayUInt8Optional") else {
            
            XCTFail("Cannot get 'Array<UInt8>' type from reflection")
            return
        }
        
        guard let arrayUInt8ImplicitlyUnwrapped: [UInt8] = reflection.value(for: "arrayUInt8ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<UInt8>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayUInt8, arrayUInt8)
        XCTAssertEqual(arrayUInt8OptionalFirst, arrayUInt8OptionalSecond)
        XCTAssertEqual(types.arrayUInt8ImplicitlyUnwrapped, arrayUInt8ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .uInt8), reflection.children("arrayUInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt8), reflection.children("arrayUInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt8), reflection.children("arrayUInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayUInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayUInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayUInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt16ArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayUInt16: [UInt16] = reflection.value(for: "arrayUInt16") else {
            
            XCTFail("Cannot get 'Array<UInt16>' type from reflection")
            return
        }
        
        guard let arrayUInt16OptionalFirst = types.arrayUInt16Optional, let arrayUInt16OptionalSecond: [UInt16] = reflection.value(for: "arrayUInt16Optional") else {
            
            XCTFail("Cannot get 'Array<UInt16>' type from reflection")
            return
        }
        
        guard let arrayUInt16ImplicitlyUnwrapped: [UInt16] = reflection.value(for: "arrayUInt16ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<UInt16>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayUInt16, arrayUInt16)
        XCTAssertEqual(arrayUInt16OptionalFirst, arrayUInt16OptionalSecond)
        XCTAssertEqual(types.arrayUInt16ImplicitlyUnwrapped, arrayUInt16ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .uInt16), reflection.children("arrayUInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt16), reflection.children("arrayUInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt16), reflection.children("arrayUInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayUInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayUInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayUInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt32ArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayUInt32: [UInt32] = reflection.value(for: "arrayUInt32") else {
            
            XCTFail("Cannot get 'Array<UInt32>' type from reflection")
            return
        }
        
        guard let arrayUInt32OptionalFirst = types.arrayUInt32Optional, let arrayUInt32OptionalSecond: [UInt32] = reflection.value(for: "arrayUInt32Optional") else {
            
            XCTFail("Cannot get 'Array<UInt32>' type from reflection")
            return
        }
        
        guard let arrayUInt32ImplicitlyUnwrapped: [UInt32] = reflection.value(for: "arrayUInt32ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<UInt32>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayUInt32, arrayUInt32)
        XCTAssertEqual(arrayUInt32OptionalFirst, arrayUInt32OptionalSecond)
        XCTAssertEqual(types.arrayUInt32ImplicitlyUnwrapped, arrayUInt32ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .uInt32), reflection.children("arrayUInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt32), reflection.children("arrayUInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt32), reflection.children("arrayUInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayUInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayUInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayUInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt64ArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayUInt64: [UInt64] = reflection.value(for: "arrayUInt64") else {
            
            XCTFail("Cannot get 'Array<UInt64>' type from reflection")
            return
        }
        
        guard let arrayUInt64OptionalFirst = types.arrayUInt64Optional, let arrayUInt64OptionalSecond: [UInt64] = reflection.value(for: "arrayUInt64Optional") else {
            
            XCTFail("Cannot get 'Array<UInt64>' type from reflection")
            return
        }
        
        guard let arrayUInt64ImplicitlyUnwrapped: [UInt64] = reflection.value(for: "arrayUInt64ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<UInt64>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayUInt64, arrayUInt64)
        XCTAssertEqual(arrayUInt64OptionalFirst, arrayUInt64OptionalSecond)
        XCTAssertEqual(types.arrayUInt64ImplicitlyUnwrapped, arrayUInt64ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .uInt64), reflection.children("arrayUInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt64), reflection.children("arrayUInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt64), reflection.children("arrayUInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayUInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayUInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayUInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithIntArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayInt: [Int] = reflection.value(for: "arrayInt") else {
            
            XCTFail("Cannot get 'Array<Int>' type from reflection")
            return
        }
        
        guard let arrayIntOptionalFirst = types.arrayIntOptional, let arrayIntOptionalSecond: [Int] = reflection.value(for: "arrayIntOptional") else {
            
            XCTFail("Cannot get 'Array<Int>' type from reflection")
            return
        }
        
        guard let arrayIntImplicitlyUnwrapped: [Int] = reflection.value(for: "arrayIntImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<Int>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayInt, arrayInt)
        XCTAssertEqual(arrayIntOptionalFirst, arrayIntOptionalSecond)
        XCTAssertEqual(types.arrayIntImplicitlyUnwrapped, arrayIntImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .int), reflection.children("arrayInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int), reflection.children("arrayIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .int), reflection.children("arrayIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUIntArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayUInt: [UInt] = reflection.value(for: "arrayUInt") else {
            
            XCTFail("Cannot get 'Array<UInt>' type from reflection")
            return
        }
        
        guard let arrayUIntOptionalFirst = types.arrayUIntOptional, let arrayUIntOptionalSecond: [UInt] = reflection.value(for: "arrayUIntOptional") else {
            
            XCTFail("Cannot get 'Array<UInt>' type from reflection")
            return
        }
        
        guard let arrayUIntImplicitlyUnwrapped: [UInt] = reflection.value(for: "arrayUIntImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<UInt>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayUInt, arrayUInt)
        XCTAssertEqual(arrayUIntOptionalFirst, arrayUIntOptionalSecond)
        XCTAssertEqual(types.arrayUIntImplicitlyUnwrapped, arrayUIntImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .uInt), reflection.children("arrayUInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt), reflection.children("arrayUIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .uInt), reflection.children("arrayUIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayUInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayUIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayUIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithDoubleArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayDouble: [Double] = reflection.value(for: "arrayDouble") else {
            
            XCTFail("Cannot get 'Array<Double>' type from reflection")
            return
        }
        
        guard let arrayDoubleOptionalFirst = types.arrayDoubleOptional, let arrayDoubleOptionalSecond: [Double] = reflection.value(for: "arrayDoubleOptional") else {
            
            XCTFail("Cannot get 'Array<Double>' type from reflection")
            return
        }
        
        guard let arrayDoubleImplicitlyUnwrapped: [Double] = reflection.value(for: "arrayDoubleImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<Double>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayDouble, arrayDouble)
        XCTAssertEqual(arrayDoubleOptionalFirst, arrayDoubleOptionalSecond)
        XCTAssertEqual(types.arrayDoubleImplicitlyUnwrapped, arrayDoubleImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .double), reflection.children("arrayDouble")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .double), reflection.children("arrayDoubleOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .double), reflection.children("arrayDoubleImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayDouble")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayDoubleOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayDoubleImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithFloatArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayFloat: [Float] = reflection.value(for: "arrayFloat") else {
            
            XCTFail("Cannot get 'Array<Float>' type from reflection")
            return
        }
        
        guard let arrayFloatOptionalFirst = types.arrayFloatOptional, let arrayFloatOptionalSecond: [Float] = reflection.value(for: "arrayFloatOptional") else {
            
            XCTFail("Cannot get 'Array<Float>' type from reflection")
            return
        }
        
        guard let arrayFloatImplicitlyUnwrapped: [Float] = reflection.value(for: "arrayFloatImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<Float>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayFloat, arrayFloat)
        XCTAssertEqual(arrayFloatOptionalFirst, arrayFloatOptionalSecond)
        XCTAssertEqual(types.arrayFloatImplicitlyUnwrapped, arrayFloatImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .float), reflection.children("arrayFloat")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .float), reflection.children("arrayFloatOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .float), reflection.children("arrayFloatImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayFloat")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayFloatOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayFloatImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithStringArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayString: [String] = reflection.value(for: "arrayString") else {
            
            XCTFail("Cannot get 'Array<String>' type from reflection")
            return
        }
        
        guard let arrayStringOptionalFirst = types.arrayStringOptional, let arrayStringOptionalSecond: [String] = reflection.value(for: "arrayStringOptional") else {
            
            XCTFail("Cannot get 'Array<String>' type from reflection")
            return
        }
        
        guard let arrayStringImplicitlyUnwrapped: [String] = reflection.value(for: "arrayStringImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<String>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayString, arrayString)
        XCTAssertEqual(arrayStringOptionalFirst, arrayStringOptionalSecond)
        XCTAssertEqual(types.arrayStringImplicitlyUnwrapped, arrayStringImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .string), reflection.children("arrayString")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .string), reflection.children("arrayStringOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .string), reflection.children("arrayStringImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayString")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayStringOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayStringImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithAnyArrayBasicTypes() {
        
        let types      = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(ReflectionValueType.array(of: .any), reflection.children("arrayAny")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .any), reflection.children("arrayAnyOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .any), reflection.children("arrayAnyImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayAny")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayAnyOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayAnyImplicitlyUnwrapped")?.type.generalType)
    }
}
