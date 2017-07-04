//
//  ViewController.swift
//  Catch the Kenny
//
//  Created by Sam LEE on 3/7/2017.
//  Copyright © 2017 MacTechin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    var score = 0
    
    var counter = 0
    
    var timer = Timer ()
    
    var kennyArray = [UIImageView]()
    
    
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(score)"
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScores))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScores))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScores))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScores))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScores))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScores))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScores))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScores))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScores))
        
        kenny1.addGestureRecognizer(recognizer1)
        kenny2.addGestureRecognizer(recognizer2)
        kenny3.addGestureRecognizer(recognizer3)
        kenny4.addGestureRecognizer(recognizer4)
        kenny5.addGestureRecognizer(recognizer5)
        kenny6.addGestureRecognizer(recognizer6)
        kenny7.addGestureRecognizer(recognizer7)
        kenny8.addGestureRecognizer(recognizer8)
        kenny9.addGestureRecognizer(recognizer9)
        
        
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        
        counter = 30
        timeLabel.text = "\(counter)"

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil , repeats: true)
    
    }

    func increaseScores()
    {
        //this is what happens when recognizers get called 
        score += 1
        scoreLabel.text = "Score: \(score)"
        
    }
    
    func countDown ()
    {
        counter -= 1
        timeLabel.text = "\(counter)"
        
        if counter == 0
        {
            timer.invalidate()
            let alert = UIAlertController(title: "Time", message: "Your Time is Up", preferredStyle: .alert)
            let ok = UIAlertAction (title: "OK", style: UIAlertActionStyle.destructive, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func hideKenny ()
    {
        for kenny in kennyArray {
            kenny.isHidden = true
        }
        
        let randomNumber = Int(arc4random_uniform(UInt32(kennyArray.count - 1 )))
        kennyArray[randomNumber].isHidden = false
        
    }
}


