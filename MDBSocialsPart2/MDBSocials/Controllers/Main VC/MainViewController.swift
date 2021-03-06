//
//  MainViewController.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/23/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit
import FirebaseAuth

class MainViewController : UIViewController
{
    
    // ===================================== USER-INTERFACE =====================================
    // IMAGE
    var mdbImageView : UIImageView!
    
    // LABELS
    var mdbSocialsLabel : UILabel!
    
    // BUTTONS
    var loginButton : RoundedWhiteButton!
    var signupButton : RoundedWhiteButton!
    
    // ===========================================================================================

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        displayMDBLogo()
        displaySubtitle()
        displayLoginButton()
        displaySignupButton()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if let user = Auth.auth().currentUser
        {
            performSegue(withIdentifier: "toFeedScreen", sender: self)
        }
    }
    
    
    @objc func loginButtonPressed()
    {
        performSegue(withIdentifier: "toLoginScreen", sender: self)
    }
    
    @objc func signupButtonPressed()
    {
        performSegue(withIdentifier: "toSignUpScreen", sender: self)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
    
}
