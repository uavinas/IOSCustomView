//
//  PersonCell.swift
//  MyUserView
//
//  Created by Ishan Weerasooriya on 5/25/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAdd: UILabel!
    @IBOutlet weak var imgPer: UIImageView!
    

    func configureCell(person: Person) {
        lblName.text = person.name
        lblAdd.text = person.address
        imgPer.image = UIImage(named: person.image)
    }
    
}

