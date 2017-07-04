//
//  BasicTypeTests.swift
//  Reflection
//
//  Created by incetro on 27/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import XCTest
import Reflex

// MARK: - BasicTypeTests

class BasicTypeTests: XCTestCase {
    
    func testThatDisabledReflectionWorksCorrectWithBoolBasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.bool, reflection.value(for: "bool"))
        XCTAssertEqual(types.boolOptional, reflection.value(for: "boolOptional"))
        XCTAssertEqual(types.boolImplicitlyUnwrapped, reflection.value(for: "boolImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.bool, reflection.children("bool")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.bool, reflection.children("boolOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.bool, reflection.children("boolImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("bool")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("boolOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("boolImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt8BasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.int8, reflection.value(for: "int8"))
        XCTAssertEqual(types.int8Optional, reflection.value(for: "int8Optional"))
        XCTAssertEqual(types.int8ImplicitlyUnwrapped, reflection.value(for: "int8ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.int8, reflection.children("int8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int8, reflection.children("int8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int8, reflection.children("int8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("int8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("int8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("int8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt16BasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.int16, reflection.value(for: "int16"))
        XCTAssertEqual(types.int16Optional, reflection.value(for: "int16Optional"))
        XCTAssertEqual(types.int16ImplicitlyUnwrapped, reflection.value(for: "int16ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.int16, reflection.children("int16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int16, reflection.children("int16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int16, reflection.children("int16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("int16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("int16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("int16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt32BasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.int32, reflection.value(for: "int32"))
        XCTAssertEqual(types.int32Optional, reflection.value(for: "int32Optional"))
        XCTAssertEqual(types.int32ImplicitlyUnwrapped, reflection.value(for: "int32ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.int32, reflection.children("int32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int32, reflection.children("int32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int32, reflection.children("int32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("int32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("int32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("int32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithInt64BasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.int64, reflection.value(for: "int64"))
        XCTAssertEqual(types.int64Optional, reflection.value(for: "int64Optional"))
        XCTAssertEqual(types.int64ImplicitlyUnwrapped, reflection.value(for: "int64ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.int64, reflection.children("int64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int64, reflection.children("int64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int64, reflection.children("int64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("int64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("int64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("int64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt8BasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.uInt8, reflection.value(for: "uInt8"))
        XCTAssertEqual(types.uInt8Optional, reflection.value(for: "uInt8Optional"))
        XCTAssertEqual(types.uInt8ImplicitlyUnwrapped, reflection.value(for: "uInt8ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.uInt8, reflection.children("uInt8")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt8, reflection.children("uInt8Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt8, reflection.children("uInt8ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("uInt8")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("uInt8Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("uInt8ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt16BasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.uInt16, reflection.value(for: "uInt16"))
        XCTAssertEqual(types.uInt16Optional, reflection.value(for: "uInt16Optional"))
        XCTAssertEqual(types.uInt16ImplicitlyUnwrapped, reflection.value(for: "uInt16ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.uInt16, reflection.children("uInt16")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt16, reflection.children("uInt16Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt16, reflection.children("uInt16ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("uInt16")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("uInt16Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("uInt16ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt32BasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.uInt32, reflection.value(for: "uInt32"))
        XCTAssertEqual(types.uInt32Optional, reflection.value(for: "uInt32Optional"))
        XCTAssertEqual(types.uInt32ImplicitlyUnwrapped, reflection.value(for: "uInt32ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.uInt32, reflection.children("uInt32")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt32, reflection.children("uInt32Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt32, reflection.children("uInt32ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("uInt32")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("uInt32Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("uInt32ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUInt64BasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.uInt64, reflection.value(for: "uInt64"))
        XCTAssertEqual(types.uInt64Optional, reflection.value(for: "uInt64Optional"))
        XCTAssertEqual(types.uInt64ImplicitlyUnwrapped, reflection.value(for: "uInt64ImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.uInt64, reflection.children("uInt64")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt64, reflection.children("uInt64Optional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt64, reflection.children("uInt64ImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("uInt64")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("uInt64Optional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("uInt64ImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithIntBasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.int, reflection.value(for: "int"))
        XCTAssertEqual(types.intOptional, reflection.value(for: "intOptional"))
        XCTAssertEqual(types.intImplicitlyUnwrapped, reflection.value(for: "intImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.int, reflection.children("int")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int, reflection.children("intOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.int, reflection.children("intImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("int")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("intOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("intImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithUIntBasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.uInt, reflection.value(for: "uInt"))
        XCTAssertEqual(types.uIntOptional, reflection.value(for: "uIntOptional"))
        XCTAssertEqual(types.uIntImplicitlyUnwrapped, reflection.value(for: "uIntImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.uInt, reflection.children("uInt")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt, reflection.children("uIntOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.uInt, reflection.children("uIntImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("uInt")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("uIntOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("uIntImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithDoubleBasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.double, reflection.value(for: "double"))
        XCTAssertEqual(types.doubleOptional, reflection.value(for: "doubleOptional"))
        XCTAssertEqual(types.doubleImplicitlyUnwrapped, reflection.value(for: "doubleImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.double, reflection.children("double")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.double, reflection.children("doubleOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.double, reflection.children("doubleImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("double")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("doubleOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("doubleImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithFloatBasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.float, reflection.value(for: "float"))
        XCTAssertEqual(types.floatOptional, reflection.value(for: "floatOptional"))
        XCTAssertEqual(types.floatImplicitlyUnwrapped, reflection.value(for: "floatImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.float, reflection.children("float")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.float, reflection.children("floatOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.float, reflection.children("floatImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("float")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("floatOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("floatImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithStringBasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.string, reflection.value(for: "string"))
        XCTAssertEqual(types.stringOptional, reflection.value(for: "stringOptional"))
        XCTAssertEqual(types.stringImplicitlyUnwrapped, reflection.value(for: "stringImplicitlyUnwrapped"))
        
        XCTAssertEqual(ReflectionValueType.string, reflection.children("string")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.string, reflection.children("stringOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.string, reflection.children("stringImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("string")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("stringOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("stringImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithAnyBasicTypes() {
        
        let types = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(types.any as? Bool, reflection.value(for: "any"))
        
        XCTAssertEqual(ReflectionValueType.bool, reflection.children("any")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.any, reflection.children("anyOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.any, reflection.children("anyImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("any")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("anyOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("anyImplicitlyUnwrapped")?.type.generalType)
    }
    
    func testThatDisabledReflectionWorksCorrectWithTupleBasicTypes() {
        
        let types      = BasicTypes()
        let reflection = Reflector.reflect(from: types, withAncestorsRequirements: .disabled)
        
        // MARK: - Tuple
        
        XCTAssertEqual(types.tuple.0, (reflection["tuple"] as? (Int, String))?.0)
        XCTAssertEqual(types.tuple.1, (reflection["tuple"] as? (Int, String))?.1)
        
        XCTAssertEqual(types.tupleOptional?.0, (reflection["tupleOptional"] as? (Int, String))?.0)
        XCTAssertEqual(types.tupleOptional?.1, (reflection["tupleOptional"] as? (Int, String))?.1)
        
        XCTAssertEqual(types.tupleImplicitlyUnwrapped.0, (reflection["tupleImplicitlyUnwrapped"] as? (Int, String))?.0)
        XCTAssertEqual(types.tupleImplicitlyUnwrapped.1, (reflection["tupleImplicitlyUnwrapped"] as? (Int, String))?.1)
        
        XCTAssertEqual(ReflectionValueType.tuple(of: [.int, .string]), reflection.children("tuple")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.tuple(of: [.int, .string]), reflection.children("tupleOptional")?.type.valueType)
        XCTAssertEqual(ReflectionValueType.tuple(of: [.int, .string]), reflection.children("tupleImplicitlyUnwrapped")?.type.valueType)
        
        XCTAssertEqual(ReflectionGeneralType.simple, reflection.children("tuple")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.optional, reflection.children("tupleOptional")?.type.generalType)
        XCTAssertEqual(ReflectionGeneralType.implicitlyUnwrapped, reflection.children("tupleImplicitlyUnwrapped")?.type.generalType)
    }
}
