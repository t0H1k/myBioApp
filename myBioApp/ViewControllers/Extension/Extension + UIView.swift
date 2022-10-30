//
//  Extension + UIView.swift
//  myBioApp
//
//  Created by Anton Boev on 07.10.2022.
//

import UIKit

//MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer() {
        let firstColor = UIColor(
            red: 15/255,
            green: 115/255,
            blue: 114/255,
            alpha: 1
        )
        
        let secondColor = UIColor(
            red: 202/255,
            green: 117/255,
            blue: 6/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
