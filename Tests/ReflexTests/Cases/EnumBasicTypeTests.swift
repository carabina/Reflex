//
//  EnumBasicTypeTests.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import XCTest
import Reflex

// MARK: - EnumBasicTypeTests

class EnumBasicTypeTests: XCTestCase {
    
    func testThatDisabledReflectionWorksCorrectWithEnum() {
        
        let types = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enum, reflection.value(for: "enum"))
        XCTAssertEqual(types.enumOptional, reflection.value(for: "enumOptional"))
        XCTAssertEqual(types.enumImplicitlyUnwrapped, reflection.value(for: "enumImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "Enum"), reflection.children("enum")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "Enum"), reflection.children("enumOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "Enum"), reflection.children("enumImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enum")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt8Enum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumInt8, reflection.value(for: "enumInt8"))
        XCTAssertEqual(types.enumInt8Optional, reflection.value(for: "enumInt8Optional"))
        XCTAssertEqual(types.enumInt8ImplicitlyUnwrapped, reflection.value(for: "enumInt8ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt8"), reflection.children("enumInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt8"), reflection.children("enumInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt8"), reflection.children("enumInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt16Enum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumInt16, reflection.value(for: "enumInt16"))
        XCTAssertEqual(types.enumInt16Optional, reflection.value(for: "enumInt16Optional"))
        XCTAssertEqual(types.enumInt16ImplicitlyUnwrapped, reflection.value(for: "enumInt16ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt16"), reflection.children("enumInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt16"), reflection.children("enumInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt16"), reflection.children("enumInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt32Enum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumInt32, reflection.value(for: "enumInt32"))
        XCTAssertEqual(types.enumInt32Optional, reflection.value(for: "enumInt32Optional"))
        XCTAssertEqual(types.enumInt32ImplicitlyUnwrapped, reflection.value(for: "enumInt32ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt32"), reflection.children("enumInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt32"), reflection.children("enumInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt32"), reflection.children("enumInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt64Enum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumInt64, reflection.value(for: "enumInt64"))
        XCTAssertEqual(types.enumInt64Optional, reflection.value(for: "enumInt64Optional"))
        XCTAssertEqual(types.enumInt64ImplicitlyUnwrapped, reflection.value(for: "enumInt64ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt64"), reflection.children("enumInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt64"), reflection.children("enumInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt64"), reflection.children("enumInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt8Enum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumUInt8, reflection.value(for: "enumUInt8"))
        XCTAssertEqual(types.enumUInt8Optional, reflection.value(for: "enumUInt8Optional"))
        XCTAssertEqual(types.enumUInt8ImplicitlyUnwrapped, reflection.value(for: "enumUInt8ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt8"), reflection.children("enumUInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt8"), reflection.children("enumUInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt8"), reflection.children("enumUInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumUInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumUInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumUInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt16Enum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumUInt16, reflection.value(for: "enumUInt16"))
        XCTAssertEqual(types.enumUInt16Optional, reflection.value(for: "enumUInt16Optional"))
        XCTAssertEqual(types.enumUInt16ImplicitlyUnwrapped, reflection.value(for: "enumUInt16ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt16"), reflection.children("enumUInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt16"), reflection.children("enumUInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt16"), reflection.children("enumUInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumUInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumUInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumUInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt32Enum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumUInt32, reflection.value(for: "enumUInt32"))
        XCTAssertEqual(types.enumUInt32Optional, reflection.value(for: "enumUInt32Optional"))
        XCTAssertEqual(types.enumUInt32ImplicitlyUnwrapped, reflection.value(for: "enumUInt32ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt32"), reflection.children("enumUInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt32"), reflection.children("enumUInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt32"), reflection.children("enumUInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumUInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumUInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumUInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt64Enum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumUInt64, reflection.value(for: "enumUInt64"))
        XCTAssertEqual(types.enumUInt64Optional, reflection.value(for: "enumUInt64Optional"))
        XCTAssertEqual(types.enumUInt64ImplicitlyUnwrapped, reflection.value(for: "enumUInt64ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt64"), reflection.children("enumUInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt64"), reflection.children("enumUInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt64"), reflection.children("enumUInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumUInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumUInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumUInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithIntEnum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumInt, reflection.value(for: "enumInt"))
        XCTAssertEqual(types.enumIntOptional, reflection.value(for: "enumIntOptional"))
        XCTAssertEqual(types.enumIntImplicitlyUnwrapped, reflection.value(for: "enumIntImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt"), reflection.children("enumInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt"), reflection.children("enumIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumInt"), reflection.children("enumIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUIntEnum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumUInt, reflection.value(for: "enumUInt"))
        XCTAssertEqual(types.enumUIntOptional, reflection.value(for: "enumUIntOptional"))
        XCTAssertEqual(types.enumUIntImplicitlyUnwrapped, reflection.value(for: "enumUIntImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt"), reflection.children("enumUInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt"), reflection.children("enumUIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumUInt"), reflection.children("enumUIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumUInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumUIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumUIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithDoubleEnum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumDouble, reflection.value(for: "enumDouble"))
        XCTAssertEqual(types.enumDoubleOptional, reflection.value(for: "enumDoubleOptional"))
        XCTAssertEqual(types.enumDoubleImplicitlyUnwrapped, reflection.value(for: "enumDoubleImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumDouble"), reflection.children("enumDouble")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumDouble"), reflection.children("enumDoubleOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumDouble"), reflection.children("enumDoubleImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumDouble")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumDoubleOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumDoubleImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithFloatEnum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumFloat, reflection.value(for: "enumFloat"))
        XCTAssertEqual(types.enumFloatOptional, reflection.value(for: "enumFloatOptional"))
        XCTAssertEqual(types.enumFloatImplicitlyUnwrapped, reflection.value(for: "enumFloatImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumFloat"), reflection.children("enumFloat")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumFloat"), reflection.children("enumFloatOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumFloat"), reflection.children("enumFloatImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumFloat")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumFloatOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumFloatImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithStringEnum() {
        
        let types      = EnumBasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.enumString, reflection.value(for: "enumString"))
        XCTAssertEqual(types.enumStringOptional, reflection.value(for: "enumStringOptional"))
        XCTAssertEqual(types.enumStringImplicitlyUnwrapped, reflection.value(for: "enumStringImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumString"), reflection.children("enumString")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumString"), reflection.children("enumStringOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.enum(named: "EnumString"), reflection.children("enumStringImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("enumString")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("enumStringOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("enumStringImplicitlyUnwrapped")?.type.generalType)
    }
}
