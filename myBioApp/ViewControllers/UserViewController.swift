//
//  UserViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class UserViewController: UIViewController {

    private let firstColor = UIColor(
        red: 150/255,
        green: 100/255,
        blue: 10/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 250/255,
        green: 250/255,
        blue: 250/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }
}
