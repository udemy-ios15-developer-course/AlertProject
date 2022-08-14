//
//  SuccessViewController.swift
//  AlertProject
//
//  Created by Chris Hand on 8/14/22.
//

import UIKit

class SuccessViewController: UIViewController {

    var name: String = ""
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(name)!"
    }
}
