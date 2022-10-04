//
//  LogOutViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    private let firstColor = UIColor(
        red: 92/255,
        green: 124/255,
        blue: 78/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 55/255,
        green: 167/255,
        blue: 187/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }

}
