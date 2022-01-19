//
//  PicturesViewController.swift
//  AboutPerson
//
//  Created by Юрий Скворцов on 18.01.2022.
//

import UIKit

class PicturesViewController: UIViewController {
    
    @IBOutlet var pictureImageView: UIImageView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pictureImageView.image = UIImage(named: user.person.image)
    }
}
