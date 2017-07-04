//
//  AncestorTests.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import XCTest
import Reflex

// MARK: - AncestorTests

class AncestorTests: XCTestCase {
    
    func testThatReflectorWorksCorrectWithAncestorsRequirements() {
        
        let disabledType       = EmptyType()
        let disabledReflection = Reflector.reflect(from: disabledType, withAncestorsRequirements: .disabled)
        
        XCTAssertEqual(disabledReflection.childrenCount, 0)
        
        let levelType = EmptyType()
        let levelTypeReflection = Reflector.reflect(from: levelType, withAncestorsRequirements: .level(of: 3))
        
        XCTAssertEqual(levelTypeReflection.childrenCount, 126)
        
        let allType = EmptyType()
        let allTypeReflection = Reflector.reflect(from: allType, withAncestorsRequirements: .all)
        
        XCTAssertEqual(allTypeReflection.childrenCount, 264)
    }
}
