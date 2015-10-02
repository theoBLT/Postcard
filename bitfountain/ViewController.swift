//
//  ViewController.swift
//  bitfountain
//
//  Created by Théo Blochet on 01/10/15.
//  Copyright © 2015 theo incorporated. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    // IB Outlet refers to the element
    // weak indicates that this is a weak pointer. Strong doesn't make sense here
    // var means that it will be a variable
    // our name will be our way to reference to the object. 
    
    @IBOutlet weak var enterNameTextFieled: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        
        enterMessageTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        //Close the keyboard
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        // Set a new title for the Button
        
    }

}

