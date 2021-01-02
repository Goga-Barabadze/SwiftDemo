//
//  Class.swift
//  SwiftDemo
//
//  Created by Goga Barabadze on 02.01.21.
//

import Foundation

class Class {
    
    var name = ""
    var students = [Student]()
    
    init() {
        
    }
    
    init(name: String, students: [Student]) {
        self.name = name
        self.students = students
    }
}
