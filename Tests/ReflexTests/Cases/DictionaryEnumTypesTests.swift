//
//  DictionaryEnumTypesTests.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import XCTest
import Reflex

// MARK: - DictionaryEnumTypesTests

class DictionaryEnumTypesTests: XCTestCase {
    
    func testThatDisabledReflectionWorksCorrectWithEnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnum: [String: Enum] = reflection.value(for: "dictEnum") else {
            
            XCTFail("Cannot get 'Dictionary<String, Enum>' type from reflection")
            return
        }
        
        guard let dictEnumOptionalFirst = types.dictEnumOptional, let dictEnumOptionalSecond: [String: Enum] = reflection.value(for: "dictEnumOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, Enum>' type from reflection")
            return
        }
        
        guard let dictEnumImplicitlyUnwrapped: [String: Enum] = reflection.value(for: "dictEnumImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, Enum>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnum, dictEnum)
        XCTAssertEqual(dictEnumOptionalFirst, dictEnumOptionalSecond)
        XCTAssertEqual(types.dictEnumImplicitlyUnwrapped, dictEnumImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "Enum")), reflection.children("dictEnum")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "Enum")), reflection.children("dictEnumOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "Enum")), reflection.children("dictEnumImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnum")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt8EnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumInt8: [String: EnumInt8] = reflection.value(for: "dictEnumInt8") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt8>' type from reflection")
            return
        }
        
        guard let dictEnumInt8OptionalFirst = types.dictEnumInt8Optional, let dictEnumInt8OptionalSecond: [String: EnumInt8] = reflection.value(for: "dictEnumInt8Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt8>' type from reflection")
            return
        }
        
        guard let dictEnumInt8ImplicitlyUnwrapped: [String: EnumInt8] = reflection.value(for: "dictEnumInt8ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt8>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumInt8, dictEnumInt8)
        XCTAssertEqual(dictEnumInt8OptionalFirst, dictEnumInt8OptionalSecond)
        XCTAssertEqual(types.dictEnumInt8ImplicitlyUnwrapped, dictEnumInt8ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt8")), reflection.children("dictEnumInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt8")), reflection.children("dictEnumInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt8")), reflection.children("dictEnumInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt16EnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumInt16: [String: EnumInt16] = reflection.value(for: "dictEnumInt16") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt16>' type from reflection")
            return
        }
        
        guard let dictEnumInt16OptionalFirst = types.dictEnumInt16Optional, let dictEnumInt16OptionalSecond: [String: EnumInt16] = reflection.value(for: "dictEnumInt16Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt16>' type from reflection")
            return
        }
        
        guard let dictEnumInt16ImplicitlyUnwrapped: [String: EnumInt16] = reflection.value(for: "dictEnumInt16ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt16>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumInt16, dictEnumInt16)
        XCTAssertEqual(dictEnumInt16OptionalFirst, dictEnumInt16OptionalSecond)
        XCTAssertEqual(types.dictEnumInt16ImplicitlyUnwrapped, dictEnumInt16ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt16")), reflection.children("dictEnumInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt16")), reflection.children("dictEnumInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt16")), reflection.children("dictEnumInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt32EnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumInt32: [String: EnumInt32] = reflection.value(for: "dictEnumInt32") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt32>' type from reflection")
            return
        }
        
        guard let dictEnumInt32OptionalFirst = types.dictEnumInt32Optional, let dictEnumInt32OptionalSecond: [String: EnumInt32] = reflection.value(for: "dictEnumInt32Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt32>' type from reflection")
            return
        }
        
        guard let dictEnumInt32ImplicitlyUnwrapped: [String: EnumInt32] = reflection.value(for: "dictEnumInt32ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt32>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumInt32, dictEnumInt32)
        XCTAssertEqual(dictEnumInt32OptionalFirst, dictEnumInt32OptionalSecond)
        XCTAssertEqual(types.dictEnumInt32ImplicitlyUnwrapped, dictEnumInt32ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt32")), reflection.children("dictEnumInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt32")), reflection.children("dictEnumInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt32")), reflection.children("dictEnumInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt64EnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumInt64: [String: EnumInt64] = reflection.value(for: "dictEnumInt64") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt64>' type from reflection")
            return
        }
        
        guard let dictEnumInt64OptionalFirst = types.dictEnumInt64Optional, let dictEnumInt64OptionalSecond: [String: EnumInt64] = reflection.value(for: "dictEnumInt64Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt64>' type from reflection")
            return
        }
        
        guard let dictEnumInt64ImplicitlyUnwrapped: [String: EnumInt64] = reflection.value(for: "dictEnumInt64ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt64>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumInt64, dictEnumInt64)
        XCTAssertEqual(dictEnumInt64OptionalFirst, dictEnumInt64OptionalSecond)
        XCTAssertEqual(types.dictEnumInt64ImplicitlyUnwrapped, dictEnumInt64ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt64")), reflection.children("dictEnumInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt64")), reflection.children("dictEnumInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt64")), reflection.children("dictEnumInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt8EnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumUInt8: [String: EnumUInt8] = reflection.value(for: "dictEnumUInt8") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt8>' type from reflection")
            return
        }
        
        guard let dictEnumUInt8OptionalFirst = types.dictEnumUInt8Optional, let dictEnumUInt8OptionalSecond: [String: EnumUInt8] = reflection.value(for: "dictEnumUInt8Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt8>' type from reflection")
            return
        }
        
        guard let dictEnumUInt8ImplicitlyUnwrapped: [String: EnumUInt8] = reflection.value(for: "dictEnumUInt8ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt8>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumUInt8, dictEnumUInt8)
        XCTAssertEqual(dictEnumUInt8OptionalFirst, dictEnumUInt8OptionalSecond)
        XCTAssertEqual(types.dictEnumUInt8ImplicitlyUnwrapped, dictEnumUInt8ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt8")), reflection.children("dictEnumUInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt8")), reflection.children("dictEnumUInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt8")), reflection.children("dictEnumUInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumUInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumUInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumUInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt16EnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumUInt16: [String: EnumUInt16] = reflection.value(for: "dictEnumUInt16") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt16>' type from reflection")
            return
        }
        
        guard let dictEnumUInt16OptionalFirst = types.dictEnumUInt16Optional, let dictEnumUInt16OptionalSecond: [String: EnumUInt16] = reflection.value(for: "dictEnumUInt16Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt16>' type from reflection")
            return
        }
        
        guard let dictEnumUInt16ImplicitlyUnwrapped: [String: EnumUInt16] = reflection.value(for: "dictEnumUInt16ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt16>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumUInt16, dictEnumUInt16)
        XCTAssertEqual(dictEnumUInt16OptionalFirst, dictEnumUInt16OptionalSecond)
        XCTAssertEqual(types.dictEnumUInt16ImplicitlyUnwrapped, dictEnumUInt16ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt16")), reflection.children("dictEnumUInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt16")), reflection.children("dictEnumUInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt16")), reflection.children("dictEnumUInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumUInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumUInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumUInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt32EnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumUInt32: [String: EnumUInt32] = reflection.value(for: "dictEnumUInt32") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt32>' type from reflection")
            return
        }
        
        guard let dictEnumUInt32OptionalFirst = types.dictEnumUInt32Optional, let dictEnumUInt32OptionalSecond: [String: EnumUInt32] = reflection.value(for: "dictEnumUInt32Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt32>' type from reflection")
            return
        }
        
        guard let dictEnumUInt32ImplicitlyUnwrapped: [String: EnumUInt32] = reflection.value(for: "dictEnumUInt32ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt32>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumUInt32, dictEnumUInt32)
        XCTAssertEqual(dictEnumUInt32OptionalFirst, dictEnumUInt32OptionalSecond)
        XCTAssertEqual(types.dictEnumUInt32ImplicitlyUnwrapped, dictEnumUInt32ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt32")), reflection.children("dictEnumUInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt32")), reflection.children("dictEnumUInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt32")), reflection.children("dictEnumUInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumUInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumUInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumUInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt64EnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumUInt64: [String: EnumUInt64] = reflection.value(for: "dictEnumUInt64") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt64>' type from reflection")
            return
        }
        
        guard let dictEnumUInt64OptionalFirst = types.dictEnumUInt64Optional, let dictEnumUInt64OptionalSecond: [String: EnumUInt64] = reflection.value(for: "dictEnumUInt64Optional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt64>' type from reflection")
            return
        }
        
        guard let dictEnumUInt64ImplicitlyUnwrapped: [String: EnumUInt64] = reflection.value(for: "dictEnumUInt64ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt64>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumUInt64, dictEnumUInt64)
        XCTAssertEqual(dictEnumUInt64OptionalFirst, dictEnumUInt64OptionalSecond)
        XCTAssertEqual(types.dictEnumUInt64ImplicitlyUnwrapped, dictEnumUInt64ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt64")), reflection.children("dictEnumUInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt64")), reflection.children("dictEnumUInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt64")), reflection.children("dictEnumUInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumUInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumUInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumUInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithIntEnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumInt: [String: EnumInt] = reflection.value(for: "dictEnumInt") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt>' type from reflection")
            return
        }
        
        guard let dictEnumIntOptionalFirst = types.dictEnumIntOptional, let dictEnumIntOptionalSecond: [String: EnumInt] = reflection.value(for: "dictEnumIntOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt>' type from reflection")
            return
        }
        
        guard let dictEnumIntImplicitlyUnwrapped: [String: EnumInt] = reflection.value(for: "dictEnumIntImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumInt>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumInt, dictEnumInt)
        XCTAssertEqual(dictEnumIntOptionalFirst, dictEnumIntOptionalSecond)
        XCTAssertEqual(types.dictEnumIntImplicitlyUnwrapped, dictEnumIntImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt")), reflection.children("dictEnumInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt")), reflection.children("dictEnumIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumInt")), reflection.children("dictEnumIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUIntEnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumUInt: [String: EnumUInt] = reflection.value(for: "dictEnumUInt") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt>' type from reflection")
            return
        }
        
        guard let dictEnumUIntOptionalFirst = types.dictEnumUIntOptional, let dictEnumUIntOptionalSecond: [String: EnumUInt] = reflection.value(for: "dictEnumUIntOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt>' type from reflection")
            return
        }
        
        guard let dictEnumUIntImplicitlyUnwrapped: [String: EnumUInt] = reflection.value(for: "dictEnumUIntImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumUInt>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumUInt, dictEnumUInt)
        XCTAssertEqual(dictEnumUIntOptionalFirst, dictEnumUIntOptionalSecond)
        XCTAssertEqual(types.dictEnumUIntImplicitlyUnwrapped, dictEnumUIntImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt")), reflection.children("dictEnumUInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt")), reflection.children("dictEnumUIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumUInt")), reflection.children("dictEnumUIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumUInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumUIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumUIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithDoubleEnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumDouble: [String: EnumDouble] = reflection.value(for: "dictEnumDouble") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumDouble>' type from reflection")
            return
        }
        
        guard let dictEnumDoubleOptionalFirst = types.dictEnumDoubleOptional, let dictEnumDoubleOptionalSecond: [String: EnumDouble] = reflection.value(for: "dictEnumDoubleOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumDouble>' type from reflection")
            return
        }
        
        guard let dictEnumDoubleImplicitlyUnwrapped: [String: EnumDouble] = reflection.value(for: "dictEnumDoubleImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumDouble>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumDouble, dictEnumDouble)
        XCTAssertEqual(dictEnumDoubleOptionalFirst, dictEnumDoubleOptionalSecond)
        XCTAssertEqual(types.dictEnumDoubleImplicitlyUnwrapped, dictEnumDoubleImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumDouble")), reflection.children("dictEnumDouble")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumDouble")), reflection.children("dictEnumDoubleOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumDouble")), reflection.children("dictEnumDoubleImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumDouble")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumDoubleOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumDoubleImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithFloatEnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumFloat: [String: EnumFloat] = reflection.value(for: "dictEnumFloat") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumFloat>' type from reflection")
            return
        }
        
        guard let dictEnumFloatOptionalFirst = types.dictEnumFloatOptional, let dictEnumFloatOptionalSecond: [String: EnumFloat] = reflection.value(for: "dictEnumFloatOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumFloat>' type from reflection")
            return
        }
        
        guard let dictEnumFloatImplicitlyUnwrapped: [String: EnumFloat] = reflection.value(for: "dictEnumFloatImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumFloat>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumFloat, dictEnumFloat)
        XCTAssertEqual(dictEnumFloatOptionalFirst, dictEnumFloatOptionalSecond)
        XCTAssertEqual(types.dictEnumFloatImplicitlyUnwrapped, dictEnumFloatImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumFloat")), reflection.children("dictEnumFloat")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumFloat")), reflection.children("dictEnumFloatOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumFloat")), reflection.children("dictEnumFloatImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumFloat")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumFloatOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumFloatImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithStringEnumDictionaryBasicTypes() {
        
        let types = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let dictEnumString: [String: EnumString] = reflection.value(for: "dictEnumString") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumString>' type from reflection")
            return
        }
        
        guard let dictEnumStringOptionalFirst = types.dictEnumStringOptional, let dictEnumStringOptionalSecond: [String: EnumString] = reflection.value(for: "dictEnumStringOptional") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumString>' type from reflection")
            return
        }
        
        guard let dictEnumStringImplicitlyUnwrapped: [String: EnumString] = reflection.value(for: "dictEnumStringImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Dictionary<String, EnumString>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.dictEnumString, dictEnumString)
        XCTAssertEqual(dictEnumStringOptionalFirst, dictEnumStringOptionalSecond)
        XCTAssertEqual(types.dictEnumStringImplicitlyUnwrapped, dictEnumStringImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumString")), reflection.children("dictEnumString")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumString")), reflection.children("dictEnumStringOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.dictionary(key: .string, value: .custom(named: "EnumString")), reflection.children("dictEnumStringImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("dictEnumString")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("dictEnumStringOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("dictEnumStringImplicitlyUnwrapped")?.type.generalType)
    }
}
