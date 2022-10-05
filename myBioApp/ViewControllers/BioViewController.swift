//
//  BioViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    
    private let personalData = PersonalData.getPersonalData()
    
    private let firstColor = UIColor(
        red: 15/255,
        green: 115/255,
        blue: 114/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 202/255,
        green: 117/255,
        blue: 6/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = personalData.bioHistory
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }

}
