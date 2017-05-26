//
//  CustomerCell.swift
//  MyUserView
//
//  Created by Ishan Weerasooriya on 5/25/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class CustomerCell: UITableViewCell {

    
    @IBOutlet weak var cusImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAcNumber: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCntNumber: UILabel!
    
    func configureCell (customer: Customer) {
    
        lblName.text = customer.cusName
        lblAddress.text = customer.address
        lblAcNumber.text = customer.accNumber
        lblCntNumber.text = customer.contact
        
        cusImage.image = UIImage(named: customer.cusImage)
    
    }
    
    
}
