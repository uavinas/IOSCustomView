//
//  StudentViewController.swift
//  MyUserView
//
//  Created by Ishan Weerasooriya on 5/25/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class StudentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

   //MARK: Outlets
    @IBOutlet weak var studentTableView: UITableView!
    
    
    
   //MARK: Variables
    
    var studentArray: [Student] = [Student]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentTableView.dataSource = self
        studentTableView.delegate = self
        
        creatStudent()

           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func creatStudent() {
    
        let student1 = Student(studentName: "Jim", address: "Colombo", college: "Royal", image: "Person1")
        studentArray.append(student1)
        let student2 = Student(studentName: "Kim", address: "Kandy", college: "Kingswood", image: "Person2")
        studentArray.append(student2)
        let student3 = Student(studentName: "John", address: "Gampaha", college: "Trinity", image: "Person3")
        studentArray.append(student3)
        let student4 =  Student(studentName: "Kevin", address: "Hatton", college: "Highlads", image: "Person4")
        studentArray.append(student4)
        let student5 = Student(studentName: "Mark", address: "Galle", college: "St.John Boscos", image: "Person5")
        studentArray.append(student5)
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let student = studentArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! StudentCell
        cell.studentDetailCnfigureCell(student: student)
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let student = studentArray[indexPath.row]
        let showVC = self.storyboard?.instantiateViewController(withIdentifier: "viewID") as! StudentDataTransferViewController
        self.navigationController?.pushViewController(showVC, animated: true)
        
        showVC.student = student
    }

  
}
