//
//  HomeViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var homeUserNameLabel: UILabel!
    
    private let personalData = PersonalData.getPersonalData()
    
    private let firstColor = UIColor(
        red: 10/255,
        green: 192/255,
        blue: 78/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 200/255,
        green: 200/255,
        blue: 200/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
        homeUserNameLabel.text = "Hi, \(personalData.titleName)!"

    }
}


