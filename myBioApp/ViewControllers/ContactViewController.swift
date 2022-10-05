//
//  ContactViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    private let personData = Person.getPersonalData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = personData.contactNumber
        emailLabel.text = personData.contactEmail
        cityLabel.text = personData.contactCity
    }
}
