//
//  NewSocialVC-Setup.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/29/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

extension NewSocialViewController {
    
    
    func setupNavigationBar()
    {
        navigationItem.title = "Create Event"
        navigationController?.navigationBar.barTintColor = secondaryColor
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20)]
        navigationController?.isNavigationBarHidden = false
        
        // Want to change "< Socials" back button item and text to white
        // self.navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        // navigationController?.navigationItem.leftBarButtonItem?.tintColor = UIColor.white

    }
    
    func displayPostTitle() {
        
        createPostLabel = UILabel(frame: CGRect(x: view.frame.width / 8, y: view.frame.height / 25 , width: view.frame.width, height: 50))
        createPostLabel.text = "EVENT"
        createPostLabel.textColor = UIColor.white
        createPostLabel.font = UIFont.boldSystemFont(ofSize: 30)
        // createPostLabel.font = UIFont(name: "Avenir Heavy", size: 30)
        self.view.addSubview(createPostLabel)
        
    }
    
    func displayEventNameField() {
        
        eventNameTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 5 * view.frame.height / 25, width: 6 * view.frame.width / 8, height: 40))
        eventNameTextField.placeholder = "Event Name"
        let spacerView1 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        eventNameTextField.leftViewMode = UITextFieldViewMode.always
        eventNameTextField.leftView = spacerView1
        eventNameTextField.backgroundColor = UIColor.white
        view.addSubview(eventNameTextField)
    }
    
    func displayEventDescriptionField() {
        
        descriptionTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 8 * view.frame.height / 25, width: 6 * view.frame.width / 8, height: 40))
        descriptionTextField.placeholder = "Description"
        let spacerView2 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        descriptionTextField.leftViewMode = UITextFieldViewMode.always
        descriptionTextField.leftView = spacerView2
        descriptionTextField.backgroundColor = UIColor.white
        view.addSubview(descriptionTextField)
    }
    
    func displayDateField() {
        
        dateTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 11 * view.frame.height / 25, width: 6 * view.frame.width / 8, height: 40))
        dateTextField.placeholder = "Date - MM/DD/YY"
        let spacerView3 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        dateTextField.leftViewMode = UITextFieldViewMode.always
        dateTextField.leftView = spacerView3
        dateTextField.backgroundColor = UIColor.white
        view.addSubview(dateTextField)
    }
    
    func displayTimeField() {
        
        timeTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 14 * view.frame.height / 25, width: 6 * view.frame.width / 8, height: 40))
        timeTextField.placeholder = "Time - HH:MM"
        timeTextField.isSecureTextEntry = true
        let spacerView4 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        timeTextField.leftViewMode = UITextFieldViewMode.always
        timeTextField.leftView = spacerView4
        timeTextField.backgroundColor = UIColor.white
        view.addSubview(timeTextField)
    }
    
    func displayPictureField()
    {
        attachPictureButton = UIButton(type: .custom)
        attachPictureButton = UIButton(frame: CGRect(x: view.center.x , y: 16 * view.frame.height / 25, width: 100, height: 50))
        attachPictureButton.setImage(UIImage(named: "attachImageIcon"), for: .normal)
        attachPictureButton.addTarget(self, action: #selector(imageButtonPressed), for: .touchUpInside)
        view.addSubview(attachPictureButton)
    }
    
    func displayPostButton() {
        
        postButton = RoundedWhiteButton(frame: CGRect(x: view.center.x / 2, y: 19 * view.frame.height / 25, width: 200, height: 50))
        postButton.setTitleColor(secondaryColor, for: .normal)
        postButton.setTitle("Sign Up", for: .normal)
        postButton.titleLabel?.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.bold)
        postButton.highlightedColor = UIColor(white: 1.0, alpha: 1.0)
        postButton.defaultColor = UIColor.white
        postButton.addTarget(self, action: #selector(postButtonPressed), for: .touchUpInside)
        postButton.alpha = 0.5
        view.addSubview(postButton)
        // setSignupButton(enabled: true)
        
    }
    
}
