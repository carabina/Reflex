//
//  ReflectionTests.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import XCTest
import Reflex

// MARK: - ReflectionTests

class ReflectionTests: XCTestCase {
    
    func testThatSubscriptWorksCorrect() {
        
        let someType   = ClassReflection()
        let reflection = Reflector.reflect(from: someType)
        
        XCTAssertNotNil(reflection["number"])
        XCTAssertEqual(reflection["number"] as? Int, 10)
    }
    
    func testThatChildrenByKeyWorksCorrect() {
        
        let someType   = ClassReflection()
        let reflection = Reflector.reflect(from: someType)
        
        XCTAssertNotNil(reflection.children("number")?.value)
        XCTAssertEqual(reflection.children("number")?.value as? Int, 10)
    }
    
    func testThatGetWorksCorrect() {
        
        let someType   = ClassReflection()
        let reflection = Reflector.reflect(from: someType)
        
        let valueInt: Int? = reflection.value(for: "number")
        let valueString: String? = reflection.value(for: "number")
        
        XCTAssertNotNil(valueInt)
        XCTAssertNil(valueString)
    }
    
    func testThatToDictionaryWorksCorrect() {
        
        let someType   = ClassReflection()
        let reflection = Reflector.reflect(from: someType)
        
        let dict  = reflection.toNSDictionary
        let check = ["number" : 10]
        
        XCTAssert(dict.isEqual(to: check))
    }
    
    func testThatChildrenCountWorksCorrect() {
        
        let someType   = ClassReflection()
        let reflection = Reflector.reflect(from: someType)
        
        XCTAssertEqual(reflection.childrenCount, 1)
    }
    
    func testThatChildrenNamesWorksCorrect() {
        
        let someType   = ClassReflection()
        let reflection = Reflector.reflect(from: someType)
        
        XCTAssertEqual(reflection.names, ["number"])
    }
    
    func testThatChildrenValuesWorksCorrect() {
        
        let someType   = ClassReflection()
        let reflection = Reflector.reflect(from: someType)
        
        let values = reflection.values
        
        XCTAssertEqual(values[0] as? Int, 10)
    }
    
    func testThatIsClassWorksCorrect() {
        
        let someType   = ClassReflection()
        let reflection = Reflector.reflect(from: someType)
        
        XCTAssert(reflection.isClass)
    }
    
    func testThatIsStructWorksCorrect() {
        
        let someType   = StructReflection()
        let reflection = Reflector.reflect(from: someType)
        
        XCTAssert(reflection.isStruct)
    }
    
    func testThatIsEnumWorksCorrect() {
    
        let someType   = Enum.another
        let reflection = Reflector.reflect(from: someType)
        
        XCTAssert(reflection.isEnum)
    }
    
    func testThatIsOptionalWorksCorrect() {
    
        let someType: ClassReflection? = ClassReflection()
        let reflection = Reflector.reflect(from: someType as Any)
        
        XCTAssert(reflection.isOptional)
    }
    
    func testThatIsSetWorksCorrect() {
    
        let someType   = Set<Int>()
        let reflection = Reflector.reflect(from: someType)
        
        XCTAssert(reflection.isSet)
    }
    
    func testThatIsDictionaryWorksCorrect() {
    
        let someType   = ["a" : 1]
        let reflection = Reflector.reflect(from: someType)
        
        XCTAssert(reflection.isDictionary)
    }
    
    class ClassReflection: EmptyType {
        
        var number = 10
    }
    
    struct StructReflection {
        
        var number = 10
    }
}
