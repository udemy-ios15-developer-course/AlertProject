//
//  ViewController.swift
//  AlertProject
//
//  Created by Chris Hand on 8/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordCheck: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signupClicked(_ sender: Any) {
        var message = ""
        if userName.text == "" {
            message = "* The username cannot be blank\n"
        }
        
        if password.text == "" {
            message += "* The password cannot be blank\n"
        }
        
        if password.text != passwordCheck.text {
            message += "* The passwords do not match"
        }
        
        if message != "" {
            showAlert(message: message)
            return
        }        
    }
    
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Error!", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Try Again", style: .cancel) { _ in
            print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}

