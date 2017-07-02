//
//  ViewController.swift
//  Segues
//
//  Created by Sam LEE on 2/7/2017.
//  Copyright © 2017 MacTechin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    var name = "" //Globel Var to Save text from nameText.text
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //prepare Func. it called when segue another viewcontroller.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "fromFirsttoSecodSegue" { // if the segue to "fromFirsttoSecondSegue"ID
            
            let destinationVC = segue.destination as! SecondViewController  // same SecondVieController to destinationVC const.
            destinationVC.userName = name //destinationVC is middle man !!! and send var name data  to sendocViewcontroller's var
        }
        
    }
    
    @IBAction func saveBtnClicked(_ sender: Any) {
        
        name = nameText.text! //When Clicked save button , Save data to Globel VAR
       
        performSegue(withIdentifier: "fromFirsttoSecodSegue", sender: nil) // call performsegue to id "fromFirsttoSecondSegue"
        
    }

}

