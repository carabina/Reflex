//
//  ArrayEnumTypesTests.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import XCTest
import Reflex

// MARK: - ArrayEnumTypesTests

class ArrayEnumTypesTests: XCTestCase {
    
    func testThatDisabledReflectionWorksCorrectWithEnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnum: [Enum] = reflection.value(for: "arrayEnum") else {
            
            XCTFail("Cannot get 'Array<Enum>' type from reflection")
            return
        }
        
        guard let arrayEnumOptionalFirst = types.arrayEnumOptional, let arrayEnumOptionalSecond: [Enum] = reflection.value(for: "arrayEnumOptional") else {
            
            XCTFail("Cannot get 'Array<Enum>' type from reflection")
            return
        }
        
        guard let arrayEnumImplicitlyUnwrapped: [Enum] = reflection.value(for: "arrayEnumImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<Enum>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnum, arrayEnum)
        XCTAssertEqual(arrayEnumOptionalFirst, arrayEnumOptionalSecond)
        XCTAssertEqual(types.arrayEnumImplicitlyUnwrapped, arrayEnumImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "Enum")), reflection.children("arrayEnum")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "Enum")), reflection.children("arrayEnumOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "Enum")), reflection.children("arrayEnumImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnum")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt8EnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumInt8: [EnumInt8] = reflection.value(for: "arrayEnumInt8") else {
            
            XCTFail("Cannot get 'Array<EnumInt8>' type from reflection")
            return
        }
        
        guard let arrayEnumInt8OptionalFirst = types.arrayEnumInt8Optional, let arrayEnumInt8OptionalSecond: [EnumInt8] = reflection.value(for: "arrayEnumInt8Optional") else {
            
            XCTFail("Cannot get 'Array<EnumInt8>' type from reflection")
            return
        }
        
        guard let arrayEnumInt8ImplicitlyUnwrapped: [EnumInt8] = reflection.value(for: "arrayEnumInt8ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumInt8>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumInt8, arrayEnumInt8)
        XCTAssertEqual(arrayEnumInt8OptionalFirst, arrayEnumInt8OptionalSecond)
        XCTAssertEqual(types.arrayEnumInt8ImplicitlyUnwrapped, arrayEnumInt8ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt8")), reflection.children("arrayEnumInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt8")), reflection.children("arrayEnumInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt8")), reflection.children("arrayEnumInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt16EnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumInt16: [EnumInt16] = reflection.value(for: "arrayEnumInt16") else {
            
            XCTFail("Cannot get 'Array<EnumInt16>' type from reflection")
            return
        }
        
        guard let arrayEnumInt16OptionalFirst = types.arrayEnumInt16Optional, let arrayEnumInt16OptionalSecond: [EnumInt16] = reflection.value(for: "arrayEnumInt16Optional") else {
            
            XCTFail("Cannot get 'Array<EnumInt16>' type from reflection")
            return
        }
        
        guard let arrayEnumInt16ImplicitlyUnwrapped: [EnumInt16] = reflection.value(for: "arrayEnumInt16ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumInt16>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumInt16, arrayEnumInt16)
        XCTAssertEqual(arrayEnumInt16OptionalFirst, arrayEnumInt16OptionalSecond)
        XCTAssertEqual(types.arrayEnumInt16ImplicitlyUnwrapped, arrayEnumInt16ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt16")), reflection.children("arrayEnumInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt16")), reflection.children("arrayEnumInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt16")), reflection.children("arrayEnumInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt32EnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumInt32: [EnumInt32] = reflection.value(for: "arrayEnumInt32") else {
            
            XCTFail("Cannot get 'Array<EnumInt32>' type from reflection")
            return
        }
        
        guard let arrayEnumInt32OptionalFirst = types.arrayEnumInt32Optional, let arrayEnumInt32OptionalSecond: [EnumInt32] = reflection.value(for: "arrayEnumInt32Optional") else {
            
            XCTFail("Cannot get 'Array<EnumInt32>' type from reflection")
            return
        }
        
        guard let arrayEnumInt32ImplicitlyUnwrapped: [EnumInt32] = reflection.value(for: "arrayEnumInt32ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumInt32>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumInt32, arrayEnumInt32)
        XCTAssertEqual(arrayEnumInt32OptionalFirst, arrayEnumInt32OptionalSecond)
        XCTAssertEqual(types.arrayEnumInt32ImplicitlyUnwrapped, arrayEnumInt32ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt32")), reflection.children("arrayEnumInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt32")), reflection.children("arrayEnumInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt32")), reflection.children("arrayEnumInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt64EnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumInt64: [EnumInt64] = reflection.value(for: "arrayEnumInt64") else {
            
            XCTFail("Cannot get 'Array<EnumInt64>' type from reflection")
            return
        }
        
        guard let arrayEnumInt64OptionalFirst = types.arrayEnumInt64Optional, let arrayEnumInt64OptionalSecond: [EnumInt64] = reflection.value(for: "arrayEnumInt64Optional") else {
            
            XCTFail("Cannot get 'Array<EnumInt64>' type from reflection")
            return
        }
        
        guard let arrayEnumInt64ImplicitlyUnwrapped: [EnumInt64] = reflection.value(for: "arrayEnumInt64ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumInt64>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumInt64, arrayEnumInt64)
        XCTAssertEqual(arrayEnumInt64OptionalFirst, arrayEnumInt64OptionalSecond)
        XCTAssertEqual(types.arrayEnumInt64ImplicitlyUnwrapped, arrayEnumInt64ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt64")), reflection.children("arrayEnumInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt64")), reflection.children("arrayEnumInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt64")), reflection.children("arrayEnumInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt8EnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumUInt8: [EnumUInt8] = reflection.value(for: "arrayEnumUInt8") else {
            
            XCTFail("Cannot get 'Array<EnumUInt8>' type from reflection")
            return
        }
        
        guard let arrayEnumUInt8OptionalFirst = types.arrayEnumUInt8Optional, let arrayEnumUInt8OptionalSecond: [EnumUInt8] = reflection.value(for: "arrayEnumUInt8Optional") else {
            
            XCTFail("Cannot get 'Array<EnumUInt8>' type from reflection")
            return
        }
        
        guard let arrayEnumUInt8ImplicitlyUnwrapped: [EnumUInt8] = reflection.value(for: "arrayEnumUInt8ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumUInt8>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumUInt8, arrayEnumUInt8)
        XCTAssertEqual(arrayEnumUInt8OptionalFirst, arrayEnumUInt8OptionalSecond)
        XCTAssertEqual(types.arrayEnumUInt8ImplicitlyUnwrapped, arrayEnumUInt8ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt8")), reflection.children("arrayEnumUInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt8")), reflection.children("arrayEnumUInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt8")), reflection.children("arrayEnumUInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumUInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumUInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumUInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt16EnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumUInt16: [EnumUInt16] = reflection.value(for: "arrayEnumUInt16") else {
            
            XCTFail("Cannot get 'Array<EnumUInt16>' type from reflection")
            return
        }
        
        guard let arrayEnumUInt16OptionalFirst = types.arrayEnumUInt16Optional, let arrayEnumUInt16OptionalSecond: [EnumUInt16] = reflection.value(for: "arrayEnumUInt16Optional") else {
            
            XCTFail("Cannot get 'Array<EnumUInt16>' type from reflection")
            return
        }
        
        guard let arrayEnumUInt16ImplicitlyUnwrapped: [EnumUInt16] = reflection.value(for: "arrayEnumUInt16ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumUInt16>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumUInt16, arrayEnumUInt16)
        XCTAssertEqual(arrayEnumUInt16OptionalFirst, arrayEnumUInt16OptionalSecond)
        XCTAssertEqual(types.arrayEnumUInt16ImplicitlyUnwrapped, arrayEnumUInt16ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt16")), reflection.children("arrayEnumUInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt16")), reflection.children("arrayEnumUInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt16")), reflection.children("arrayEnumUInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumUInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumUInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumUInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt32EnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumUInt32: [EnumUInt32] = reflection.value(for: "arrayEnumUInt32") else {
            
            XCTFail("Cannot get 'Array<EnumUInt32>' type from reflection")
            return
        }
        
        guard let arrayEnumUInt32OptionalFirst = types.arrayEnumUInt32Optional, let arrayEnumUInt32OptionalSecond: [EnumUInt32] = reflection.value(for: "arrayEnumUInt32Optional") else {
            
            XCTFail("Cannot get 'Array<EnumUInt32>' type from reflection")
            return
        }
        
        guard let arrayEnumUInt32ImplicitlyUnwrapped: [EnumUInt32] = reflection.value(for: "arrayEnumUInt32ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumUInt32>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumUInt32, arrayEnumUInt32)
        XCTAssertEqual(arrayEnumUInt32OptionalFirst, arrayEnumUInt32OptionalSecond)
        XCTAssertEqual(types.arrayEnumUInt32ImplicitlyUnwrapped, arrayEnumUInt32ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt32")), reflection.children("arrayEnumUInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt32")), reflection.children("arrayEnumUInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt32")), reflection.children("arrayEnumUInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumUInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumUInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumUInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt64EnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumUInt64: [EnumUInt64] = reflection.value(for: "arrayEnumUInt64") else {
            
            XCTFail("Cannot get 'Array<EnumUInt64>' type from reflection")
            return
        }
        
        guard let arrayEnumUInt64OptionalFirst = types.arrayEnumUInt64Optional, let arrayEnumUInt64OptionalSecond: [EnumUInt64] = reflection.value(for: "arrayEnumUInt64Optional") else {
            
            XCTFail("Cannot get 'Array<EnumUInt64>' type from reflection")
            return
        }
        
        guard let arrayEnumUInt64ImplicitlyUnwrapped: [EnumUInt64] = reflection.value(for: "arrayEnumUInt64ImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumUInt64>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumUInt64, arrayEnumUInt64)
        XCTAssertEqual(arrayEnumUInt64OptionalFirst, arrayEnumUInt64OptionalSecond)
        XCTAssertEqual(types.arrayEnumUInt64ImplicitlyUnwrapped, arrayEnumUInt64ImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt64")), reflection.children("arrayEnumUInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt64")), reflection.children("arrayEnumUInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt64")), reflection.children("arrayEnumUInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumUInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumUInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumUInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithIntEnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumInt: [EnumInt] = reflection.value(for: "arrayEnumInt") else {
            
            XCTFail("Cannot get 'Array<EnumInt>' type from reflection")
            return
        }
        
        guard let arrayEnumIntOptionalFirst = types.arrayEnumIntOptional, let arrayEnumIntOptionalSecond: [EnumInt] = reflection.value(for: "arrayEnumIntOptional") else {
            
            XCTFail("Cannot get 'Array<EnumInt>' type from reflection")
            return
        }
        
        guard let arrayEnumIntImplicitlyUnwrapped: [EnumInt] = reflection.value(for: "arrayEnumIntImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumInt>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumInt, arrayEnumInt)
        XCTAssertEqual(arrayEnumIntOptionalFirst, arrayEnumIntOptionalSecond)
        XCTAssertEqual(types.arrayEnumIntImplicitlyUnwrapped, arrayEnumIntImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt")), reflection.children("arrayEnumInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt")), reflection.children("arrayEnumIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumInt")), reflection.children("arrayEnumIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUIntEnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumUInt: [EnumUInt] = reflection.value(for: "arrayEnumUInt") else {
            
            XCTFail("Cannot get 'Array<EnumUInt>' type from reflection")
            return
        }
        
        guard let arrayEnumUIntOptionalFirst = types.arrayEnumUIntOptional, let arrayEnumUIntOptionalSecond: [EnumUInt] = reflection.value(for: "arrayEnumUIntOptional") else {
            
            XCTFail("Cannot get 'Array<EnumUInt>' type from reflection")
            return
        }
        
        guard let arrayEnumUIntImplicitlyUnwrapped: [EnumUInt] = reflection.value(for: "arrayEnumUIntImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumUInt>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumUInt, arrayEnumUInt)
        XCTAssertEqual(arrayEnumUIntOptionalFirst, arrayEnumUIntOptionalSecond)
        XCTAssertEqual(types.arrayEnumUIntImplicitlyUnwrapped, arrayEnumUIntImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt")), reflection.children("arrayEnumUInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt")), reflection.children("arrayEnumUIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumUInt")), reflection.children("arrayEnumUIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumUInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumUIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumUIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithDoubleEnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumDouble: [EnumDouble] = reflection.value(for: "arrayEnumDouble") else {
            
            XCTFail("Cannot get 'Array<EnumDouble>' type from reflection")
            return
        }
        
        guard let arrayEnumDoubleOptionalFirst = types.arrayEnumDoubleOptional, let arrayEnumDoubleOptionalSecond: [EnumDouble] = reflection.value(for: "arrayEnumDoubleOptional") else {
            
            XCTFail("Cannot get 'Array<EnumDouble>' type from reflection")
            return
        }
        
        guard let arrayEnumDoubleImplicitlyUnwrapped: [EnumDouble] = reflection.value(for: "arrayEnumDoubleImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumDouble>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumDouble, arrayEnumDouble)
        XCTAssertEqual(arrayEnumDoubleOptionalFirst, arrayEnumDoubleOptionalSecond)
        XCTAssertEqual(types.arrayEnumDoubleImplicitlyUnwrapped, arrayEnumDoubleImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumDouble")), reflection.children("arrayEnumDouble")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumDouble")), reflection.children("arrayEnumDoubleOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumDouble")), reflection.children("arrayEnumDoubleImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumDouble")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumDoubleOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumDoubleImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithFloatEnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumFloat: [EnumFloat] = reflection.value(for: "arrayEnumFloat") else {
            
            XCTFail("Cannot get 'Array<EnumFloat>' type from reflection")
            return
        }
        
        guard let arrayEnumFloatOptionalFirst = types.arrayEnumFloatOptional, let arrayEnumFloatOptionalSecond: [EnumFloat] = reflection.value(for: "arrayEnumFloatOptional") else {
            
            XCTFail("Cannot get 'Array<EnumFloat>' type from reflection")
            return
        }
        
        guard let arrayEnumFloatImplicitlyUnwrapped: [EnumFloat] = reflection.value(for: "arrayEnumFloatImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumFloat>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumFloat, arrayEnumFloat)
        XCTAssertEqual(arrayEnumFloatOptionalFirst, arrayEnumFloatOptionalSecond)
        XCTAssertEqual(types.arrayEnumFloatImplicitlyUnwrapped, arrayEnumFloatImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumFloat")), reflection.children("arrayEnumFloat")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumFloat")), reflection.children("arrayEnumFloatOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumFloat")), reflection.children("arrayEnumFloatImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumFloat")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumFloatOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumFloatImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithStringEnumArray() {
        
        let types      = CollectionsEnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        guard let arrayEnumString: [EnumString] = reflection.value(for: "arrayEnumString") else {
            
            XCTFail("Cannot get 'Array<EnumString>' type from reflection")
            return
        }
        
        guard let arrayEnumStringOptionalFirst = types.arrayEnumStringOptional, let arrayEnumStringOptionalSecond: [EnumString] = reflection.value(for: "arrayEnumStringOptional") else {
            
            XCTFail("Cannot get 'Array<EnumString>' type from reflection")
            return
        }
        
        guard let arrayEnumStringImplicitlyUnwrapped: [EnumString] = reflection.value(for: "arrayEnumStringImplicitlyUnwrapped") else {
            
            XCTFail("Cannot get 'Array<EnumString>' type from reflection")
            return
        }
        
        XCTAssertEqual(types.arrayEnumString, arrayEnumString)
        XCTAssertEqual(arrayEnumStringOptionalFirst, arrayEnumStringOptionalSecond)
        XCTAssertEqual(types.arrayEnumStringImplicitlyUnwrapped, arrayEnumStringImplicitlyUnwrapped)
        
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumString")), reflection.children("arrayEnumString")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumString")), reflection.children("arrayEnumStringOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.array(of: .custom(named: "EnumString")), reflection.children("arrayEnumStringImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("arrayEnumString")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("arrayEnumStringOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("arrayEnumStringImplicitlyUnwrapped")?.type.generalType)
    }
}
