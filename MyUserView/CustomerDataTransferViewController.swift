//
//  CustomerDataTransferViewController.swift
//  MyUserView
//
//  Created by Ishan Weerasooriya on 5/25/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class CustomerDataTransferViewController: UIViewController {

    //MARK: Outlets
    
    @IBOutlet weak var cusImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAccountNumber: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblContactNumber: UILabel!
    
    
    var customer : Customer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = customer?.cusName
        lblAccountNumber.text = customer?.accNumber
        lblAddress.text = customer?.address
        lblContactNumber.text = customer?.contact
        cusImage.image = UIImage(named: (customer?.cusImage)!)
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        
    }
    
    

   
}
