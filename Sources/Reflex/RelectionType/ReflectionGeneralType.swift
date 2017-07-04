//
//  ReflectionGeneralType.swift
//  Reflection
//
//  Created by incetro on 29/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - ReflectionGeneralType

/// General type of Reflection
///
/// - simple: Simple value
/// - optional: Optional value
/// - implicitlyUnwrapped: Implicitly unwrapped value

public enum ReflectionGeneralType {
    
    case `nil`
    case simple
    case optional
    case implicitlyUnwrapped
}
