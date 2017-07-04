//
//  ViewController.swift
//  Timer
//
//  Created by Sam LEE on 3/7/2017.
//  Copyright © 2017 MacTechin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLaber: UILabel!
    var timer = Timer ()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        //timerLaber.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
        
    }
    
    func timerFunction ()
    {
    
       timerLaber.text = String(counter)
        counter -= 1
        if counter == 0
        {
            timer.invalidate()
            timerLaber.text = "Time is done !"
        }
    }

   
}

