//
//  SchoolVC+UITableViewDelegate+UITableViewDataSource.swift
//  SwiftDemo
//
//  Created by Goga Barabadze on 02.01.21.
//

import UIKit

extension SchoolVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        school.classes.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        school.classes[section].students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let schoolClass = school.classes[indexPath.section]
        let student = inSortMode ? schoolClass.sortedStudents[indexPath.row] : schoolClass.students[indexPath.row]
        
        cell.textLabel?.text = "\(student.firstname) \(student.lastname)"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // Notice: No `return´ needed when there is just one statement
        school.classes[section].name
    }
}
