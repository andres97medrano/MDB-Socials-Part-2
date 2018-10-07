//
//  NewSocialViewController.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/22/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

class NewSocialViewController: UIViewController {
    
    // ===================================== USER-INTERFACE =====================================
    
    // LABELS
    var createPostLabel : UILabel!
    
    // TEXT FIELDS
    var eventNameTextField : UITextField!
    var descriptionTextField : UITextField!
    var dateTextField : UITextField!        // maybe use something else
    var timeTextField : UITextField!        // ^^
    
    // BUTTONS
    var attachPictureButton : UIButton!
    var postButton : RoundedWhiteButton!

    
    // ===========================================================================================

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        displayPostTitle()
        displayEventNameField()
        displayDateField()
        displayTimeField()
        displayEventDescriptionField()
        displayPostButton()
        displayPictureField()
        setupNavigationBar()
    }
    
    @objc func postButtonPressed() {
        
        // send post to FB storage
        self.dismiss(animated: false, completion: nil)
        
    }
    
    @objc func imageButtonPressed() {
        // access the user's camera roll or current camera
        // make sure to store in fb storage
    }
    
    @objc func textFieldChanged(_ target:UITextField) {
        let eventName = eventNameTextField.text
        let eventDescription = descriptionTextField.text
        let eventDate = dateTextField.text
        let eventTime = timeTextField.text
        
        let formFilled = eventName != nil && eventName != "" && eventDescription != nil && eventDescription != "" && eventDate != nil && eventDate != "" && eventTime != nil && eventTime != ""
        setCreateEventButton(enabled: formFilled)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
}
