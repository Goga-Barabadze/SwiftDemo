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
    
    var sortedStudents: [Student] {
        // No need to write ´get` because we don't have a ´set`
        students.sorted { (student1, student2) -> Bool in
            // No need to write ´return` because we only have one statement
            student1.firstname.lowercased() < student2.firstname.lowercased()
        }
    }
    
    init() {
        
    }
    
    init(name: String, students: [Student]) {
        self.name = name
        self.students = students
    }
}
