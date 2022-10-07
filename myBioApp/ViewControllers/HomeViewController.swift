//
//  HomeViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var homeUserNameLabel: UILabel!
    var user: User!
    
    var userNameLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        homeUserNameLabel.text = "Hi, \(user.person.fullName)!"
    }
}
