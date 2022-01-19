//
//  InfoViewController.swift
//  AboutPerson
//
//  Created by Юрий Скворцов on 18.01.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var InfoLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        
        InfoLabel.text = """
        Fraction: \(user.person.fraction)
        Profession: \(user.person.profession)
        Hobby: \(user.person.hobby)
        """
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let picturesVC = segue.destination as? PicturesViewController else { return }
        picturesVC.user = user
    }
}
