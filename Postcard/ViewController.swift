//
//  ViewController.swift
//  Postcard
//
//  Created by Edward rivera on 1/30/15.
//  Copyright (c) 2015 Manifest Ent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) // what is happening here is really simple you are getting the contents
    {                                                      // from the enter message box and sending that string to the message label
        MessageLabel.hidden = false                        // next to the enstien photo when the send button is pressed
        MessageLabel.text = enterMessageTextField.text
       
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()       // hides the keyboard
        
        MessageLabel.textColor = UIColor.greenColor() // changes the color of the text from the message box to red. only after the
                                                    // the message has been sent by pressing the send mail button
        mailButton.setTitle("Mail Sent",forState: UIControlState.Normal) // changes the string to "mail sent" in the uibutton
        
        nameLabel.text = enterNameTextField.text    // challenge portion, this simply displys the string from enter name
                                                    //name text box to the new label
        enterNameTextField.text = ""                //erases the name after the send mail has been pressed
        enterNameTextField.resignFirstResponder()   //remvoes keyboard after text for namebox text field
        nameLabel.hidden = false
    
    }
    



}

