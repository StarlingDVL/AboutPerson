//
//  ViewController.swift
//  AboutPerson
//
//  Created by Юрий Скворцов on 18.01.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    private let users = User.getUser()
    private var currentUser: User!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = currentUser
            } else if let navigationVC = viewController as? UINavigationController {
                let infoVC = navigationVC.topViewController as! InfoViewController
                infoVC.user = currentUser
            }
        }
    }
    
    @IBAction func loginButtonPressed() {
        guard let userName = userNameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        for user in users {
            if userName == user.loginName && password == user.password {
               currentUser = User(loginName: user.loginName, password: user.password, person: user.person)
                return
            }
        }
        showAlert(title: "Wrong login or password", message: "Please try again")
    }
    
    @IBAction func chooseSideButtonsPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showHelp(title: "Force is strong in you", message: "Login: \(users[1].loginName)\n Password: \(users[1].password)")
        : showHelp(title: "Join the Empire", message: "Login: \(users[0].loginName)\n Password: \(users[0].password)")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        present(alert, animated: true)
        alert.addAction(okAction)
    }
    
    private func showHelp(title: String, message: String) {
        let help = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        present(help, animated: true)
        help.addAction(okAction)
    }

}



