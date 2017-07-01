//
//  ViewController.swift
//  USERDEFAULTS DATA EXEC
//
//  Created by Sam LEE on 2/7/2017.
//  Copyright © 2017 MacTechin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storePhone = UserDefaults.standard.object(forKey: "phone")
        let storeCompany = UserDefaults.standard.object(forKey: "company")
        
        if let newName = storeName as? String
        {
            storeNameLabel.text = "Stored Name : \(newName)"
        } else {storeNameLabel.text = "Stored Name : "}
        
        if let newPhone = storePhone  as? String
        {
            storedPhoneLabel.text = "Stored Phone : \(newPhone)"
            
        }else {storedPhoneLabel.text = "Stored Phone : "}
        
        
        if let newCompany = storeCompany as? String
        {
            storedCompanyLabel.text = "Stored Company : \(newCompany)"
        }else { storedCompanyLabel.text = "Stored Company :"}
        
    }
    
    //Input Text Field
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var companyText: UITextField!

    //Display Labels
    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var storedPhoneLabel: UILabel!
    @IBOutlet weak var storedCompanyLabel: UILabel!
    

    @IBAction func saveButtonClicked(_ sender: Any) {
        //Set UserDefault.Standard Database
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(phoneText.text, forKey: "phone")
        UserDefaults.standard.set(companyText.text, forKey: "company")
        UserDefaults.standard.synchronize() //Sync to DB
        
        //Dispaly current input data to Display Lables
        storeNameLabel.text = "Stored Name : \(nameText.text!)"
        storedPhoneLabel.text = "Stored Phone : \(phoneText.text!)"
        storedCompanyLabel.text = "Stored Company : \(companyText.text!)"
    }
    
    @IBAction func deleteButtonClicked(_ sender: Any) {
        
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storePhone = UserDefaults.standard.object(forKey: "phone")
        let storeCompany = UserDefaults.standard.object(forKey: "company")
        
        if let _ = storeName as? String
        {
            UserDefaults.standard.removeObject(forKey: "name")
            UserDefaults.standard.synchronize()
            
            storeNameLabel.text = "Stored Name : "
        }
        
        if let _ = storePhone  as? String
        {
            UserDefaults.standard.removeObject(forKey: "phone")
            UserDefaults.standard.synchronize()
            
            storedPhoneLabel.text = "Stored Phone : "
            
        }
        
        if let _ = storeCompany as? String
        {
            UserDefaults.standard.removeObject(forKey: "company")
            UserDefaults.standard.synchronize()
            
            storedCompanyLabel.text = "Stored Company : "
            
        }

        
        
        
    }
    
    
    
    
    

}

