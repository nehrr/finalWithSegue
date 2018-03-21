//
//  ProfileController.swift
//  finalWithSegue
//
//  Created by Ernoul on 16/03/2018.
//  Copyright © 2018 Ernoul. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    
    @IBOutlet weak var changePwFld: UITextField!
    @IBOutlet weak var changePwConfirmFld: UITextField!
    @IBOutlet weak var changeEmailFld: UITextField!
    @IBOutlet weak var errMsg: UILabel!
    
    @IBAction func changePw() {
        if let newPw = changePwFld.text, let newConfirm = changePwConfirmFld.text {
            if !newPw.isEmpty && !newConfirm.isEmpty {
                if newPw == newConfirm {
                    StaticUser.instance.password = newPw
                    errMsg.text = "pw changed"
                    print("\(newPw) && \(newConfirm)")
                }
            }
            
            if newPw.isEmpty || newConfirm.isEmpty {
                errMsg.text = "pw cannot be empty"
                return
            }
            
            if newPw != newConfirm {
                errMsg.text = "pw don't match"
                return
            }
        }
    }
    
    @IBAction func changeEmail() {
        if let newEmail = changeEmailFld.text {
            if !newEmail.isEmpty {
                StaticUser.instance.email = newEmail
                errMsg.text = "email changed"
                    print("\(newEmail)")
                }
            
            if newEmail.isEmpty {
                errMsg.text = "email cannot be empty"
                return
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errMsg.text = "Welcome!"
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
