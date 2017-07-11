//
//  ViewController.swift
//  Swift_Validation
//
//  Created by Saurabh on 11/07/17.
//  Copyright © 2017 Aryavrat Infotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnDoneDidClicked(_ sender: UIButton) {
        if (txtFiled.text?.isValidEmailId)! {
            print("Valid Email")
        }
        
        if (txtFiled.text?.isValidPassword)! {
            print("Valid Password")
        }
        
        if (txtFiled.text?.isValidUserName)! {
            print("Valid User Phone")
        }
        
        if (txtFiled.text?.isValidMobileNumber)! {
            print("Valid Mobile Number")
        }
        
        if (txtFiled.text?.isValidEmailAndNumber)! {
            print("Valid Email and Number")
        }

    }

}

