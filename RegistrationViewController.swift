//
//  RegistrationViewController.swift
//  Homework Day 8 Second Try
//
//  Created by Erik Roberts on 6/14/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(sender: UIButton) {
        
        let emailSupplied = emailField.text!
        //let emailSupplied = String(UITextField.textInRange(emailField))
        let passwordSupplied = passwordField.text!
        
        let (failure_message , user) = UserController.sharedInstance.registerUser(emailSupplied, newPassword: passwordSupplied)
        
        //        If one is not present, check to see if a failure message is present and then print    the failure message.
        
        if let tmp = user {
            print (user)
            
            let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //as! casts this returned value to type AppDelegate
            
            appDelegate.navigateToMapViewController()
        } else {
            if let temp2 = failure_message{ //temp2 is NOT optional. If it exists, now we can use it
                print (temp2)
            }
        }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
