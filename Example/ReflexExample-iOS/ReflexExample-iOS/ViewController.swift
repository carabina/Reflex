//
//  ViewController.swift
//  ReflexExample-iOS
//
//  Created by incetro on 04/07/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import UIKit
import Reflex

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

class Manager: Employee {
    
    let projects: [Project]
    
    init(name: String, age: Int, projects: Project...) {
        
        self.projects = projects
        
        super.init(name: name, age: age, post: .manager)
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.startSimpleExample()
    }
    
    func startSimpleExample() {
        
        let project = Project(name: "Reflex")
        let manager = Manager(name: "Joe", age: 21, projects: project)
        
        let reflection = Reflector.reflect(from: manager, withAncestorsRequirements: .all)
        
        print(reflection.isArray)      // false
        
        print(reflection.isClass)      // true
        
        print(reflection.isStruct)     // false
        
        print(reflection.isSet)        // false
        
        print(reflection.isOptional)   // false
        
        print(reflection.isDictionary) // false
        
        print(reflection.isEnum)       // false
        
        print(reflection.name)         // ReflectorTests.Manager
        
        print(reflection.shortName)    // Manager
        
        print(reflection.valueType == .class(named: "Manager")) // true
        
        print(reflection.valueType == .array(of: .int)) // false
    }
}
