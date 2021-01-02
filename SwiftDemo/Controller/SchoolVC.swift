//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Goga Barabadze on 02.01.21.
//

import UIKit

class SchoolVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sortButton: UIBarButtonItem!
    
    var inSortMode = false
    
    // Our model
    var school: School!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set proper delegates for the tableview so it can know from where it will get its data
        tableView.delegate = self
        tableView.dataSource = self
        
        // Let's initialize the school-model
        let classes = generateClasses()
        school = School(name: "HTL", classes: classes)
    }
    
    @IBAction func sortButton(_ sender: Any) {
        
        inSortMode = !inSortMode
        
        print("Filter mode: \(inSortMode)")
        
        // Set filter button image
        self.sortButton.image = self.inSortMode ? UIImage(systemName: "line.horizontal.3.decrease.circle.fill") : UIImage(systemName: "line.horizontal.3.decrease.circle")
        
        tableView.reloadData()
    }
    
    fileprivate func generateClasses() -> [Class] {
        return [
            Class(name: "Class 1", students: [
                Student(firstname: "Emma", lastname: "Smith"),
                Student(firstname: "Liam", lastname: "Johnson"),
                Student(firstname: "Olivia", lastname: "Williams"),
                Student(firstname: "Noah", lastname: "Jones"),
                Student(firstname: "Anna", lastname: "Weiss"),
                Student(firstname: "Andreas", lastname: "Holzer")
            ]),
            Class(name: "Class 2", students: [
                Student(firstname: "Logan", lastname: "Brown"),
                Student(firstname: "Ava", lastname: "Davis"),
                Student(firstname: "Ethan", lastname: "Miller"),
                Student(firstname: "Isabella", lastname: "Wilson"),
                Student(firstname: "Ben", lastname: "Schmid"),
                Student(firstname: "Ava", lastname: "Fischer"),
            ])
        ]
    }
}
