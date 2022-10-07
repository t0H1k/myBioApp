//
//  UserViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var userBioPhoto: UIImageView! {
        didSet {
            userBioPhoto.layer.cornerRadius = userBioPhoto.frame.height / 2
        }
    }
    
    @IBOutlet var titleOfUserView: UINavigationItem!
    
    @IBOutlet var nameOfUserLabel: UILabel!
    @IBOutlet var surnameOfUserLabel: UILabel!
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var workOfUserLabel: UILabel!
    @IBOutlet var userPostLabel: UILabel!
    @IBOutlet var userDepartmentLabel: UILabel!
    @IBOutlet var hobbyOfUserLabel: UILabel!
    @IBOutlet var userHobbyDetailLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        userBioPhoto.image  = UIImage(named: user.person.photo)
        title = user.person.fullName
        nameOfUserLabel.text = user.person.name
        surnameOfUserLabel.text = user.person.surname
        dateOfBirthLabel.text = user.person.age
        workOfUserLabel.text = user.person.work.title
        userPostLabel.text = user.person.work.department.rawValue
        userDepartmentLabel.text = user.person.work.jobTitle.rawValue
        hobbyOfUserLabel.text = user.person.hobby.interest
        userHobbyDetailLabel.text = user.person.hobby.details.rawValue
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? BioViewController else {
            return
        }
        imageVC.user = user
    }
    
}

