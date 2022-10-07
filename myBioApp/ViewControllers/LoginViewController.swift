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
    private let user = User.getUserData()
        

    //MARK: - Live Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    

    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else {
            return
        }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach {
            if let homeVC = $0 as? HomeViewController {
                homeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userVC = navigationVC.topViewController
                guard let userVC = userVC as? UserViewController else {
                    return
                }
                userVC.user = user
            } else  if let contactVC = $0 as? ContactViewController {
                contactVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
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
        ? showAlert(title: "Ooops!", massage: "Your User name is \(user.login)")
        : showAlert(title: "Ooops!", massage: "Your password is \(user.password)")
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
