//
//  ViewController.swift
//  Gesture Recognition
//
//  Created by Sam LEE on 3/7/2017.
//  Copyright © 2017 MacTechin. All rights reserved.
//  
//  imageView.isUserInteractionEnable
//  UITapGestureReconizer(self , func )
//  imageView.addGestureReconi
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
   
    var myInteger = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    
        imageView.isUserInteractionEnabled = true
        let myGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.changePicture))
        imageView.addGestureRecognizer(myGesture)
        
    }

   func changePicture()
   {
    if myInteger == 0
    {
        imageView.image = UIImage(named: "Kirk.jpg")
        myInteger = myInteger + 1
    } else if myInteger == 1
    {
        imageView.image = UIImage(named: "James.jpg")
        myInteger = myInteger - 1
    }
    
    
    }

    
}

