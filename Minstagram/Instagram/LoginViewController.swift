//
//  LoginViewController.swift
//  Instagram
//
//  Created by Mariella Sypa on 3/19/16.
//  Copyright © 2016 Mariella Sypa. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground(usernameField.text!, password: passwordField.text!)
            { (user: PFUser?,
                error: NSError?) -> Void in
                if user != nil {
                    print("You're logged in!")
                    // manually segue to logged in view
                    self.performSegueWithIdentifier("toHome", sender: nil)
                }
        }
    }
    
    @IBAction func onSignUp(sender: AnyObject) {
        // initialize a user object
        let newUser = PFUser()
        
        // set user properties
        newUser.username = usernameField.text
        newUser.password = passwordField.text
        
        // call sign up function on the object
        newUser.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            if success
            {
                print("Yay, created a user!")
            }
            else
            {
               print(error?.localizedDescription)
            }
        }
        
    }

}

