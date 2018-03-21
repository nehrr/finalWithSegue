//
//  ViewController.swift
//  finalWithSegue
//
//  Created by Ernoul on 16/03/2018.
//  Copyright © 2018 Ernoul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailFld: UITextField!
    @IBOutlet weak var pwFld: UITextField!
    @IBOutlet weak var errMsg: UILabel!
    
    @IBAction func login(_ sender: Any) {
        if emailFld.text == "" || pwFld.text == "" {
            print("empty tokens")
            errMsg.text = "empty tokens"
            return
        }
        
        if StaticUser.instance.email.isEmpty || StaticUser.instance.password.isEmpty {
            print("user nil")
            errMsg.text = "no user"
            return
        }
        
//        if let userEmail = StaticUser.instance.email, let userPw = StaticUser.instance.password {
            if StaticUser.instance.email != emailFld.text || emailFld.text!.isEmpty {
                print("wrong email unwrapped")
                errMsg.text = "wrong email"
                return
            }
            
            if StaticUser.instance.password != pwFld.text || pwFld.text!.isEmpty {
                print("wrong password unwrapped")
                errMsg.text = "Wrong password"
                return
            }
            
            if (StaticUser.instance.email == emailFld.text) && (StaticUser.instance.password == pwFld.text) {
                print("email: \(StaticUser.instance.email) pw: \(StaticUser.instance.password)")
//                print("\(userEmail == emailFld.text)")
//                print("\(userPw == pwFld.text)")
               
                errMsg.text = "Logged in"
                
                self.performSegue(withIdentifier: "ToProfile", sender: self)
            }
//        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToProfile" {
            if let des = segue.destination as? ProfileController {
//                des.errMsg.text = "Test"
            }
        }
    }

}

