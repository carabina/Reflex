//
//  Complex.swift
//  Reflector
//
//  Created by incetro on 02/07/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - Human

class Human {
    
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        
        self.name = name
        self.age  = age
    }
}

// MARK: - Post

enum Post {
    
    case manager
    case programmer
    case designer
}

// MARK: - Project

struct Project {
    
    let name: String
}

// MARK: - Employee

class Employee: Human {
    
    let post: Post
    
    init(name: String, age: Int, post: Post) {
        
        self.post = post
        
        super.init(name: name, age: age)
    }
}

// MARK: - Manager

class Manager: Employee, Hashable {
    
    let projects: [Project]
    
    init(name: String, age: Int, projects: Project...) {
        
        self.projects = projects
        
        super.init(name: name, age: age, post: .manager)
    }
    
    var hashValue: Int {
        
        return ObjectIdentifier(self).hashValue
    }
    
    public static func ==(lhs: Manager, rhs: Manager) -> Bool {
        
        return lhs.hashValue == rhs.hashValue
    }
}
