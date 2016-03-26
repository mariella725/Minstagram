//
//  ProfileViewController.swift
//  Instagram
//
//  Created by Mariella Sypa on 3/20/16.
//  Copyright © 2016 Mariella Sypa. All rights reserved.
//

import UIKit
import Parse

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onLogout(sender: AnyObject) {
        PFUser.logOut()
        if PFUser.currentUser() == nil {
            // if there is a logged in user then load the home view controller
            print("There is no current user.")
            
            performSegueWithIdentifier("toLogin", sender: nil)
            
        }

        
    }

}
