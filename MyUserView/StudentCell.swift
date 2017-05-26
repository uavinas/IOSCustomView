//
//  StudentCell.swift
//  MyUserView
//
//  Created by Ishan Weerasooriya on 5/25/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class StudentCell: UITableViewCell {

    //MARK: Outlets
    
    @IBOutlet weak var lblStudentName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCollege: UILabel!
    @IBOutlet weak var studentImage: UIImageView!
    
    func studentDetailCnfigureCell(student: Student) {
    
        lblStudentName.text = student.studentName
        lblAddress.text = student.address
        lblCollege.text = student.college
        studentImage.image = UIImage(named: (student.image))
    
    }

}
