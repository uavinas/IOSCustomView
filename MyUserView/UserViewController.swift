//
//  UserViewController.swift
//  MyUserView
//
//  Created by Ishan Weerasooriya on 5/25/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class UserViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK: Outlets
       @IBOutlet weak var userTableView: UITableView!
   
    
    //MARK: Variables
    var personArray : [Person] = [Person]()
    
   
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDummyPersons()
        
    //  userTableView.dataSource = self
    // userTableView.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    
    func createDummyPersons() {
        
        let person1 = Person(name: "John", address: "Kandy", image: "Person1", info: "This person is From Kandy the id image is mentiond over there and john is a student who is currently following his higher studies in a well reputed university")
        let person2 = Person(name: "Jim", address: "Colombo", image: "Person2", info: "This person is From Colombo the id image is mentiond over there")
        let person3 = Person(name: "Tom", address: "Hatton", image: "Person3", info: "This person is From Hatton the id image is mentiond over there")
        let person4 = Person(name: "Kenady", address: "Galle", image: "Person4", info: "This person is From Galle the id image is mentiond over there")
        let person5 = Person(name: "Samitha", address: "Gampaha", image: "Person5", info: "This person is From Gampaha the id image is mentiond over there")
        let person6 = Person(name: "Bharatha", address: "Matale", image: "Person6", info: "This person is From Matale the id image is mentiond over there")
        let person7 = Person(name: "Saman", address: "Matara", image: "Person7", info: "This person is From Matara the id image is mentiond over there")
        let person8 = Person(name: "Manjo", address: "Jaffna", image: "Person8", info: "This person is From Jaffna the id image is mentiond over there")
        let person9 = Person(name: "Kevin", address: "Gampola", image: "Person9", info: "This person is From Gampola the id image is mentiond over there")
        let person10 = Person(name: "Devinda", address: "Anuradhapura", image: "Person10", info: "This person is From Anuradhapura the id image is mentiond over there")
        
        personArray.append(person1)
        personArray.append(person2)
        personArray.append(person3)
        personArray.append(person4)
        personArray.append(person5)
        personArray.append(person6)
        personArray.append(person7)
        personArray.append(person8)
        personArray.append(person9)
        personArray.append(person10)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return personArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
        
        let person = personArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! PersonCell
        cell.configureCell(person: person)
        
        //cell.lblName.text = person.name
        //cell.lblAdd.text = person.address
//       cell.imgPer.image = UIImage(named: person.image)
        
        return cell
        
    }
    
    //MARK: to transfer cell data from one to another view controller
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personArray[indexPath.row]
        
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! UserDetailsTransferViewController
        detailVC.person = person
        
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
}





