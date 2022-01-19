//
//  WelcomeViewController.swift
//  AboutPerson
//
//  Created by Юрий Скворцов on 18.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var welcomeImageView: UIImageView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user.person.fullName)"

        welcomeImageView.image = UIImage(named: "StarWars")
    }
}
