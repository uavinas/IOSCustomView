//
//  StudentDataTransferViewController.swift
//  MyUserView
//
//  Created by Ishan Weerasooriya on 5/25/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class StudentDataTransferViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var stdImage: UIImageView!
    @IBOutlet weak var lblStdName: UILabel!
    @IBOutlet weak var lblStdAddress: UILabel!
    @IBOutlet weak var lblStdCollege: UILabel!
    
    //MARK: Variables
    var student: Student?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblStdName.text = student?.studentName
        lblStdAddress.text = student?.address
        lblStdCollege.text = student?.college
        stdImage.image = UIImage(named: (student?.image)!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

   
}
