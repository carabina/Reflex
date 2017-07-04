//
//  CollectionComplexTypeTests.swift
//  Reflection
//
//  Created by incetro on 02/07/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import XCTest
import Reflex

// MARK: - CollectionComplexTypeTests

class CollectionComplexTypeTests: XCTestCase {
    
    let manager = Manager(name: "Andrew", age: 21, projects: Project(name: "Reflection"))
    
    func testThatReflectorWorksCorrectWithSimpleDictionary() {
        
        let dictionary:  [String: Manager]   = ["manager" : manager]
        
        let reflection = Reflector.reflect(from: dictionary)
        
        XCTAssert(reflection.isDictionary)
        XCTAssertFalse(reflection.isOptional)
        XCTAssertEqual(reflection.names, ["manager"])
        XCTAssertEqual(reflection.type.valueType, .dictionary(key: .string, value: .class(named: "Manager")))
        XCTAssertEqual(reflection.children("manager")?.type.generalType, .simple)
    }
    
    func testThatReflectorWorksCorrectWithOptionalValueDictionary() {
        
        let dictionary: [String: Manager?]  = ["manager" : manager]
        
        let reflection = Reflector.reflect(from: dictionary)
        
        XCTAssert(reflection.isDictionary)
        XCTAssertFalse(reflection.isOptional)
        XCTAssertEqual(reflection.names, ["manager"])
        XCTAssertEqual(reflection.type.valueType, .dictionary(key: .string, value: .class(named: "Manager")))
        XCTAssertEqual(reflection.children("manager")?.type.generalType, .optional)
    }
    
    func testThatReflectorWorksCorrectWithOptionalDictionary() {
        
        let dictionary: [String: Manager]?  = ["manager" : manager]
        
        let reflection = Reflector.reflect(from: dictionary)
        
        XCTAssert(reflection.isDictionary)
        XCTAssert(reflection.isOptional)
        XCTAssertEqual(reflection.names, ["manager"])
        XCTAssertEqual(reflection.type.valueType, .dictionary(key: .string, value: .class(named: "Manager")))
        XCTAssertEqual(reflection.children("manager")?.type.generalType, .simple)
    }
    
    func testThatReflectorWorksCorrectWithOptionalKeyAndOptionalDictionary() {
        
        let dictionary: [String: Manager?]? = ["manager" : manager]
        
        let reflection = Reflector.reflect(from: dictionary)
        
        XCTAssert(reflection.isDictionary)
        XCTAssert(reflection.isOptional)
        XCTAssertEqual(reflection.names, ["manager"])
        XCTAssertEqual(reflection.type.valueType, .dictionary(key: .string, value: .class(named: "Manager")))
        XCTAssertEqual(reflection.children("manager")?.type.generalType, .optional)
    }
    
    func testThatReflectionWorksCorrectWithSimpleArray() {
        
        let array: [Manager] = [manager]
        
        let reflection = Reflector.reflect(from: array)
        
        XCTAssert(reflection.isArray)
        XCTAssertFalse(reflection.isOptional)
        XCTAssertEqual(reflection.childrenCount, 1)
        XCTAssertEqual(reflection.type.valueType, .array(of: .class(named: "Manager")))
        XCTAssertEqual(reflection.children.first?.type.generalType, .simple)
    }
    
    func testThatReflectionWorksCorrectWithOptionalArray() {
        
        let array: [Manager]? = [manager]
        
        let reflection = Reflector.reflect(from: array)
        
        XCTAssert(reflection.isArray)
        XCTAssert(reflection.isOptional)
        XCTAssertEqual(reflection.childrenCount, 1)
        XCTAssertEqual(reflection.type.valueType, .array(of: .class(named: "Manager")))
        XCTAssertEqual(reflection.children.first?.type.generalType, .simple)
    }
    
    func testThatReflectionWorksCorrectWithSimpleSet() {
        
        let array: Set<Manager> = [manager]
        
        let reflection = Reflector.reflect(from: array)
        
        XCTAssert(reflection.isSet)
        XCTAssertFalse(reflection.isOptional)
        XCTAssertEqual(reflection.childrenCount, 1)
        XCTAssertEqual(reflection.type.valueType, .set(of: .class(named: "Manager")))
        XCTAssertEqual(reflection.children.first?.type.generalType, .simple)
    }
    
    func testThatReflectionWorksCorrectWithOptionalSet() {
        
        let array: Set<Manager>? = [manager]
        
        let reflection = Reflector.reflect(from: array)
        
        XCTAssert(reflection.isSet)
        XCTAssert(reflection.isOptional)
        XCTAssertEqual(reflection.childrenCount, 1)
        XCTAssertEqual(reflection.type.valueType, .set(of: .class(named: "Manager")))
        XCTAssertEqual(reflection.children.first?.type.generalType, .simple)
    }
}
