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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        phoneNumberLabel.text = user.person.contact.phone
        emailLabel.text = user.person.contact.email
        cityLabel.text = user.person.contact.city
    }
}
