//
//  ViewController.swift
//  firebase-demo
//
//  Created by Caitlin Palmer-Bright on 15/3/19.
//  Copyright © 2019 Bitsmith. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "StartToHome", sender: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "StartToLogin", sender: self)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        performSegue(withIdentifier: "StartToSignUp", sender: self)
    }
}

