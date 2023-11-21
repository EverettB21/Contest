//
//  ViewController.swift
//  Contest
//
//  Created by Everett Brothers on 10/25/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func enterClicked(_ sender: Any) {
        if !emailField.text!.isEmpty {
            if emailField.text != "" {
                performSegue(withIdentifier: "toDetail", sender: nil)
                emailField.text = nil
                emailField.placeholder = "Email:"
                return
            }
        }
        DispatchQueue.main.async {
            UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.7, options: [], animations: {
                self.emailField.transform = CGAffineTransform(translationX: CGFloat(integerLiteral: 10), y: CGFloat(integerLiteral: 0))
            }) { (_) in
                UIView.animate(withDuration: 0.25, animations: {
                    self.emailField.transform = CGAffineTransform.identity
                })
            }
        }
    }
    
}

