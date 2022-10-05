//
//  UserViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var titleOfUserView: UINavigationItem!
    
    @IBOutlet var nameOfUserLabel: UILabel!
    @IBOutlet var surnameOfUserLabel: UILabel!
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var workOfUserLabel: UILabel!
    @IBOutlet var hobbyOfUserLabel: UILabel!
    
    private let personData = Person.getPersonalData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfUserLabel.text = personData.personName
        surnameOfUserLabel.text = personData.personSurname
        dateOfBirthLabel.text = personData.personDateOfBirth
        workOfUserLabel.text = personData.personWork
        hobbyOfUserLabel.text = personData.personHobby
    }
}
