//
//  School.swift
//  SwiftDemo
//
//  Created by Goga Barabadze on 02.01.21.
//

import Foundation

class School {
    
    var name = ""
    var classes = [Class]()
    
    init(name: String, classes: [Class]) {
        self.name = name
        self.classes = classes
    }
}
