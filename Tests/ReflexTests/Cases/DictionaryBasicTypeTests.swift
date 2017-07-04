//
//  DictionaryBasicTypeTests.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import XCTest
import Reflex

// MARK: - DictionaryBasicTypeTests

class DictionaryBasicTypeTests: XCTestCase {
    
    func XCTAssertEqualDictionaries<S, T: Equatable>(_ first: [S:T], _ second: [S:T]) {
        
        XCTAssert(first == second)
    }
    
    func testThatDisabledReflectionWorksCorrectWithBoolDictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictBool: [String: Bool] = reflection.value(for: "dictBool") else {
            
            XCTFail("Cannot get 'Dictionary<String, Bool>' type from reflection")
            return
        }
        
        guard let dictBoolOptionalFirst = types.dictBoolOptional, let dictBoolOptionalSecond: [String: Bool] = reflection.value(for: "dictBoolOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, Bool>' type from reflection")
            return
        }
        
        guard let dictBoolImplicitlyUnwrapped: [String: Bool] = reflection.value(for: "dictBoolImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, Bool>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictBool, dictBool)
        XCTAssertEqualDictionaries(dictBoolOptionalFirst, dictBoolOptionalSecond)
        XCTAssertEqualDictionaries(types.dictBoolImplicitlyUnwrapped, dictBoolImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .bool), reflection.children("dictBool")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .bool), reflection.children("dictBoolOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .bool), reflection.children("dictBoolImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictBool")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictBoolOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictBoolImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt8DictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictInt8: [String: Int8] = reflection.value(for: "dictInt8") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int8>' type from reflection")
            return
        }
        
        guard let dictInt8OptionalFirst = types.dictInt8Optional, let dictInt8OptionalSecond: [String: Int8] = reflection.value(for: "dictInt8Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int8>' type from reflection")
            return
        }
        
        guard let dictInt8ImplicitlyUnwrapped: [String: Int8] = reflection.value(for: "dictInt8ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int8>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictInt8, dictInt8)
        XCTAssertEqualDictionaries(dictInt8OptionalFirst, dictInt8OptionalSecond)
        XCTAssertEqualDictionaries(types.dictInt8ImplicitlyUnwrapped, dictInt8ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int8), reflection.children("dictInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int8), reflection.children("dictInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int8), reflection.children("dictInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt16DictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictInt16: [String: Int16] = reflection.value(for: "dictInt16") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int16>' type from reflection")
            return
        }
        
        guard let dictInt16OptionalFirst = types.dictInt16Optional, let dictInt16OptionalSecond: [String: Int16] = reflection.value(for: "dictInt16Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int16>' type from reflection")
            return
        }
        
        guard let dictInt16ImplicitlyUnwrapped: [String: Int16] = reflection.value(for: "dictInt16ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int16>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictInt16, dictInt16)
        XCTAssertEqualDictionaries(dictInt16OptionalFirst, dictInt16OptionalSecond)
        XCTAssertEqualDictionaries(types.dictInt16ImplicitlyUnwrapped, dictInt16ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int16), reflection.children("dictInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int16), reflection.children("dictInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int16), reflection.children("dictInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt32DictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictInt32: [String: Int32] = reflection.value(for: "dictInt32") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int32>' type from reflection")
            return
        }
        
        guard let dictInt32OptionalFirst = types.dictInt32Optional, let dictInt32OptionalSecond: [String: Int32] = reflection.value(for: "dictInt32Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int32>' type from reflection")
            return
        }
        
        guard let dictInt32ImplicitlyUnwrapped: [String: Int32] = reflection.value(for: "dictInt32ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int32>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictInt32, dictInt32)
        XCTAssertEqualDictionaries(dictInt32OptionalFirst, dictInt32OptionalSecond)
        XCTAssertEqualDictionaries(types.dictInt32ImplicitlyUnwrapped, dictInt32ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int32), reflection.children("dictInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int32), reflection.children("dictInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int32), reflection.children("dictInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt64DictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictInt64: [String: Int64] = reflection.value(for: "dictInt64") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int64>' type from reflection")
            return
        }
        
        guard let dictInt64OptionalFirst = types.dictInt64Optional, let dictInt64OptionalSecond: [String: Int64] = reflection.value(for: "dictInt64Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int64>' type from reflection")
            return
        }
        
        guard let dictInt64ImplicitlyUnwrapped: [String: Int64] = reflection.value(for: "dictInt64ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int64>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictInt64, dictInt64)
        XCTAssertEqualDictionaries(dictInt64OptionalFirst, dictInt64OptionalSecond)
        XCTAssertEqualDictionaries(types.dictInt64ImplicitlyUnwrapped, dictInt64ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int64), reflection.children("dictInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int64), reflection.children("dictInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int64), reflection.children("dictInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt8DictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictUInt8: [String: UInt8] = reflection.value(for: "dictUInt8") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt8>' type from reflection")
            return
        }
        
        guard let dictUInt8OptionalFirst = types.dictUInt8Optional, let dictUInt8OptionalSecond: [String: UInt8] = reflection.value(for: "dictUInt8Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt8>' type from reflection")
            return
        }
        
        guard let dictUInt8ImplicitlyUnwrapped: [String: UInt8] = reflection.value(for: "dictUInt8ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt8>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictUInt8, dictUInt8)
        XCTAssertEqualDictionaries(dictUInt8OptionalFirst, dictUInt8OptionalSecond)
        XCTAssertEqualDictionaries(types.dictUInt8ImplicitlyUnwrapped, dictUInt8ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt8), reflection.children("dictUInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt8), reflection.children("dictUInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt8), reflection.children("dictUInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictUInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictUInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictUInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt16DictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictUInt16: [String: UInt16] = reflection.value(for: "dictUInt16") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt16>' type from reflection")
            return
        }
        
        guard let dictUInt16OptionalFirst = types.dictUInt16Optional, let dictUInt16OptionalSecond: [String: UInt16] = reflection.value(for: "dictUInt16Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt16>' type from reflection")
            return
        }
        
        guard let dictUInt16ImplicitlyUnwrapped: [String: UInt16] = reflection.value(for: "dictUInt16ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt16>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictUInt16, dictUInt16)
        XCTAssertEqualDictionaries(dictUInt16OptionalFirst, dictUInt16OptionalSecond)
        XCTAssertEqualDictionaries(types.dictUInt16ImplicitlyUnwrapped, dictUInt16ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt16), reflection.children("dictUInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt16), reflection.children("dictUInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt16), reflection.children("dictUInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictUInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictUInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictUInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt32DictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictUInt32: [String: UInt32] = reflection.value(for: "dictUInt32") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt32>' type from reflection")
            return
        }
        
        guard let dictUInt32OptionalFirst = types.dictUInt32Optional, let dictUInt32OptionalSecond: [String: UInt32] = reflection.value(for: "dictUInt32Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt32>' type from reflection")
            return
        }
        
        guard let dictUInt32ImplicitlyUnwrapped: [String: UInt32] = reflection.value(for: "dictUInt32ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt32>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictUInt32, dictUInt32)
        XCTAssertEqualDictionaries(dictUInt32OptionalFirst, dictUInt32OptionalSecond)
        XCTAssertEqualDictionaries(types.dictUInt32ImplicitlyUnwrapped, dictUInt32ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt32), reflection.children("dictUInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt32), reflection.children("dictUInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt32), reflection.children("dictUInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictUInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictUInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictUInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt64DictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictUInt64: [String: UInt64] = reflection.value(for: "dictUInt64") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt64>' type from reflection")
            return
        }
        
        guard let dictUInt64OptionalFirst = types.dictUInt64Optional, let dictUInt64OptionalSecond: [String: UInt64] = reflection.value(for: "dictUInt64Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt64>' type from reflection")
            return
        }
        
        guard let dictUInt64ImplicitlyUnwrapped: [String: UInt64] = reflection.value(for: "dictUInt64ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt64>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictUInt64, dictUInt64)
        XCTAssertEqualDictionaries(dictUInt64OptionalFirst, dictUInt64OptionalSecond)
        XCTAssertEqualDictionaries(types.dictUInt64ImplicitlyUnwrapped, dictUInt64ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt64), reflection.children("dictUInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt64), reflection.children("dictUInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt64), reflection.children("dictUInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictUInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictUInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictUInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithIntDictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictInt: [String: Int] = reflection.value(for: "dictInt") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int>' type from reflection")
            return
        }
        
        guard let dictIntOptionalFirst = types.dictIntOptional, let dictIntOptionalSecond: [String: Int] = reflection.value(for: "dictIntOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int>' type from reflection")
            return
        }
        
        guard let dictIntImplicitlyUnwrapped: [String: Int] = reflection.value(for: "dictIntImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, Int>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictInt, dictInt)
        XCTAssertEqualDictionaries(dictIntOptionalFirst, dictIntOptionalSecond)
        XCTAssertEqualDictionaries(types.dictIntImplicitlyUnwrapped, dictIntImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int), reflection.children("dictInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int), reflection.children("dictIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .int), reflection.children("dictIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUIntDictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictUInt: [String: UInt] = reflection.value(for: "dictUInt") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt>' type from reflection")
            return
        }
        
        guard let dictUIntOptionalFirst = types.dictUIntOptional, let dictUIntOptionalSecond: [String: UInt] = reflection.value(for: "dictUIntOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt>' type from reflection")
            return
        }
        
        guard let dictUIntImplicitlyUnwrapped: [String: UInt] = reflection.value(for: "dictUIntImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, UInt>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictUInt, dictUInt)
        XCTAssertEqualDictionaries(dictUIntOptionalFirst, dictUIntOptionalSecond)
        XCTAssertEqualDictionaries(types.dictUIntImplicitlyUnwrapped, dictUIntImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt), reflection.children("dictUInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt), reflection.children("dictUIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .uInt), reflection.children("dictUIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictUInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictUIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictUIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithDoubleDictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictDouble: [String: Double] = reflection.value(for: "dictDouble") else {
            
            XCTFail("Cannot get 'Dictionary<String, Double>' type from reflection")
            return
        }
        
        guard let dictDoubleOptionalFirst = types.dictDoubleOptional, let dictDoubleOptionalSecond: [String: Double] = reflection.value(for: "dictDoubleOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, Double>' type from reflection")
            return
        }
        
        guard let dictDoubleImplicitlyUnwrapped: [String: Double] = reflection.value(for: "dictDoubleImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, Double>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictDouble, dictDouble)
        XCTAssertEqualDictionaries(dictDoubleOptionalFirst, dictDoubleOptionalSecond)
        XCTAssertEqualDictionaries(types.dictDoubleImplicitlyUnwrapped, dictDoubleImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .double), reflection.children("dictDouble")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .double), reflection.children("dictDoubleOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .double), reflection.children("dictDoubleImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictDouble")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictDoubleOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictDoubleImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithFloatDictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictFloat: [String: Float] = reflection.value(for: "dictFloat") else {
            
            XCTFail("Cannot get 'Dictionary<String, Float>' type from reflection")
            return
        }
        
        guard let dictFloatOptionalFirst = types.dictFloatOptional, let dictFloatOptionalSecond: [String: Float] = reflection.value(for: "dictFloatOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, Float>' type from reflection")
            return
        }
        
        guard let dictFloatImplicitlyUnwrapped: [String: Float] = reflection.value(for: "dictFloatImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, Float>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictFloat, dictFloat)
        XCTAssertEqualDictionaries(dictFloatOptionalFirst, dictFloatOptionalSecond)
        XCTAssertEqualDictionaries(types.dictFloatImplicitlyUnwrapped, dictFloatImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .float), reflection.children("dictFloat")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .float), reflection.children("dictFloatOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .float), reflection.children("dictFloatImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictFloat")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictFloatOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictFloatImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithStringDictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictString: [String: String] = reflection.value(for: "dictString") else {
            
            XCTFail("Cannot get 'Dictionary<String, String>' type from reflection")
            return
        }
        
        guard let dictStringOptionalFirst = types.dictStringOptional, let dictStringOptionalSecond: [String: String] = reflection.value(for: "dictStringOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, String>' type from reflection")
            return
        }
        
        guard let dictStringImplicitlyUnwrapped: [String: String] = reflection.value(for: "dictStringImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, String>' type from reflection")
            return
        }
        
        XCTAssertEqualDictionaries(types.dictString, dictString)
        XCTAssertEqualDictionaries(dictStringOptionalFirst, dictStringOptionalSecond)
        XCTAssertEqualDictionaries(types.dictStringImplicitlyUnwrapped, dictStringImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .string), reflection.children("dictString")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .string), reflection.children("dictStringOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .string), reflection.children("dictStringImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictString")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictStringOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictStringImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithAnyDictionaryBasicTypes() {
        
        let types = CollectionBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .any), reflection.children("dictAny")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .any), reflection.children("dictAnyOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .any), reflection.children("dictAnyImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictAny")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictAnyOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictAnyImplicitlyUnwrapped")?.type.generalType)
    }
}
