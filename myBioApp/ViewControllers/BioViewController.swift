//
//  BioViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class BioViewController: UIViewController {

    private let firstColor = UIColor(
        red: 140/255,
        green: 94/255,
        blue: 58/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 92/255,
        green: 195/255,
        blue: 250/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }

}
