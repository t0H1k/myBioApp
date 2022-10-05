//
//  UserViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var titleOfUserView: UINavigationItem!
    
    @IBOutlet var nameOfUser: UILabel!
    @IBOutlet var surnameOfUser: UILabel!
    @IBOutlet var dateOfBitrh: UILabel!
    @IBOutlet var workOfUser: UILabel!
    @IBOutlet var hobbyOfUser: UILabel!
    
    private let personalData = PersonalData.getPersonalData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfUser.text = personalData.personName
        surnameOfUser.text = personalData.personSurname
        dateOfBitrh.text = personalData.personDateOfBirth
        workOfUser.text = personalData.personWork
        hobbyOfUser.text = personalData.personHobby
    }
}
    


