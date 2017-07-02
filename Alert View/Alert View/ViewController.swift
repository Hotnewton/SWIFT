//
//  ViewController.swift
//  Alert View
//
//  Created by Sam LEE on 2/7/2017.
//  Copyright © 2017 MacTechin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordAgainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


 
    @IBAction func myButtonClicked(_ sender: Any) {
        
        if userNameText.text == "" {
            
            let alert = UIAlertController.init(title: "Error", message: "Please provide a username !!", preferredStyle: .alert )
            
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil )
            
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }else if passwordText.text == ""
        
        {
            let alert = UIAlertController.init(title: "Error", message: "Please provide a passwords !!", preferredStyle: .alert )
                
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil )
                
            alert.addAction(okButton)
            
            self.present(alert, animated: true, completion: nil)

        } else if passwordText.text != passwordAgainText.text
        
        {
            let alert = UIAlertController.init(title: "Error", message: "Please provide matching passwords!!", preferredStyle: .alert )
            
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil )
            
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)

        } else
            
        {
            let alert = UIAlertController.init(title: "Error", message: "\(userNameText.text!) is Created", preferredStyle: .alert )
            
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil )
            
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)

        }
    }
}

