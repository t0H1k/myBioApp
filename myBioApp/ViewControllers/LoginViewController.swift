//
//  LoginViewController.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    //MARK: - Private Properties
    private let personData = Person.getPersonalData()
        
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
    
    //MARK: - Live Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewControllers in
            if let homeVC = viewControllers as? HomeViewController {
                homeVC.userNameLabel = "Hi, \(personData.titleName)!"
                homeVC.view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
            } else if let navigationVC = viewControllers as? UINavigationController {
                guard let userVC = navigationVC.topViewController as? UserViewController else { return }
                userVC.view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
                userVC.titleOfUserView.title = personData.titleName
            } else if let contactVC = viewControllers as? ContactViewController {
                contactVC.view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
            } else if let logOutVC = viewControllers as? LogOutViewController {
                logOutVC.view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
            }
        }
    }
    
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == personData.username, passwordTF.text == personData.password else {
            showAlert(
                title: "Ooops!",
                massage: "Wrong User Name or Password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showHomeVC", sender: nil)
    }
    
    //MARK: - IB Action
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Ooops!", massage: "Your User name is \(personData.username)")
        : showAlert(title: "Ooops!", massage: "Your password is \(personData.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: - Private Methods
    private func showAlert(title: String, massage: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
