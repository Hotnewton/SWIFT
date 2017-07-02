//
//  SecondViewController.swift
//  Segues
//
//  Created by Sam LEE on 2/7/2017.
//  Copyright © 2017 MacTechin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
   
    var userName = " " // Globel Var for receive data from other VeiwController
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
    
        nameLabel.text = "Your Name is : \(userName)"  //When View loaded .. Initilizating label format , if there is userName data ..it will display
        
    }

    @IBAction func backButtonClicked(_ sender: Any) {
  
        self.dismiss(animated: true, completion: nil)  // when click back button , it call dismiss func (it retunr to firstview ) 
    
    }
    
}
