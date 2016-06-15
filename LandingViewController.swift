//
//  LandingViewController.swift
//  Homework Day 8 Second Try
//
//  Created by Erik Roberts on 6/14/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(sender: UIButton) {
        
        print("login button tapped")
        let lvc = LoginViewController(nibName: "LoginViewController", bundle : nil)
        navigationController?.pushViewController(lvc, animated: true)

    }

    @IBAction func registerButtonTapped(sender: UIButton) {
        
        print("registration button tapped")
        let rvc = RegistrationViewController(nibName: "RegistrationViewController", bundle: nil)
        navigationController?.pushViewController(rvc, animated: true)
    }
 

}
