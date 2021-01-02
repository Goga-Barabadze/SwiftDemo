//
//  SchoolVC+UITableViewDelegate+UITableViewDataSource.swift
//  SwiftDemo
//
//  Created by Goga Barabadze on 02.01.21.
//

import UIKit

extension SchoolVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // One section for each class
        return school.classes.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return school.classes[section].students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let student = school.classes[indexPath.section].students[indexPath.row]
        
        cell.textLabel?.text = "\(student.firstname) \(student.lastname)"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // Notice: No `return´ needed when there is just one statement
        school.classes[section].name
    }
}
