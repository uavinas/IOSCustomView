//
//  UserDetailsTransferViewController.swift
//  MyUserView
//
//  Created by Ishan Weerasooriya on 5/25/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class UserDetailsTransferViewController: UIViewController {

   
    //MARK: Outlets
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblInfo: UILabel!
    
    //MARK: Variables
    
    var person : Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lblUserName.text = person?.name
        lblAddress.text = person?.address
        lblInfo.text = person?.info
        userImage.image = UIImage(named: (person?.image)!)
        
            }
   
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
