//
//  ViewController.swift
//  Working with Images
//
//  Created by Sam LEE on 3/7/2017.
//  Copyright © 2017 MacTechin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
   
    var status = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func changeButtonClicked(_ sender: Any) {
        
        if status == true {
            
            imageView.image = UIImage(named: "James.jpg")
            status = false
        } else if status == false
        {
            imageView.image = UIImage(named: "Kirk.jpg")
            status = true
        }
       
        
    }

}



/*
  //var myInteger = 0
 
 if myInteger == 0 {
 
 imageView.image = UIImage(named: "James.jpg")
 myInteger = myInteger + 1
 } else if myInteger == 1
 {
 imageView.image = UIImage(named: "Kirk.jpg")
 myInteger = myInteger - 1
 }
 */
