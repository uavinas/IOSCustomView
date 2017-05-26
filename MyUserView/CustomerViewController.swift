//
//  CustomerViewController.swift
//  MyUserView
//
//  Created by Ishan Weerasooriya on 5/25/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class CustomerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

   //MARK: Outlets
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var customerTableView: UITableView!
    

  //MARK: Variables
    
    var customerArray: [Customer] = [Customer]() // creating a aempty array to avoid optional values
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customerTableView.dataSource = self
        customerTableView.delegate = self

        createBankCustomer()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }
    
    func createBankCustomer() {
    
        let cus1 = Customer(cusName: "John", accNumber: "SAMUIYTRE", address: "Colombo", contact: "NIL", bankName: "Sampath Bank", cusImage: "Person1")
        customerArray.append(cus1)
        let cus2 = Customer(cusName: "Kevin", accNumber: "CMRTYHGTR", address: "Kandy", contact: "NIL", bankName: "HNB", cusImage: "Person2")
        customerArray.append(cus2)
        let cus3 = Customer(cusName: "Tom", accNumber: "HNBGTREWD", address: "Galle", contact: "0770475420", bankName: "Commercial", cusImage: "Person3")
        customerArray.append(cus3)
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let customer = customerArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomerCell
        
        cell.configureCell(customer: customer)
        
//        cell.lblName.text = customer.cusName
//        cell.lblAcNumber.text = customer.accNumber
//        cell.lblCntNumber.text = customer.contact
//        
//        cell.cusImage = UIImage(named: customer.cusImage)
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let customer = customerArray[indexPath.row]
        let cusVC = self.storyboard?.instantiateViewController(withIdentifier: "cusDetailVC") as! CustomerDataTransferViewController
        cusVC.customer = customer
        
        self.navigationController?.pushViewController(cusVC, animated: true)
        
        
    }
    
    

    
}
