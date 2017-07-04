//
//  AncestorsRequirements.swift
//  Reflection
//
//  Created by incetro on 27/06/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - AncestorsRequirements

/// Requirements for getting properties from ancestors
///
/// - disabled: Get properties from current class
/// - all: Get properties from all ancestors
/// - level: Get properties from the given level
public enum AncestorsRequirements {
    
    case disabled
    case all
    case level(of: Int)
}
