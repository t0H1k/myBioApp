//
//  ContactViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class ContactViewController: UIViewController {

    private let firstColor = UIColor(
        red: 10/255,
        green: 192/255,
        blue: 78/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 17/255,
        green: 55/255,
        blue: 110/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }
}
