//
//  RegisterController.swift
//  finalWithSegue
//
//  Created by Ernoul on 16/03/2018.
//  Copyright © 2018 Ernoul. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {
    
    @IBOutlet weak var emailFld: UITextField!
    @IBOutlet weak var pwFld: UITextField!
    @IBOutlet weak var pwConfirmFld: UITextField!
    @IBOutlet weak var errMsg: UILabel!
    
    @IBAction func register(_ sender: Any) {
        //perform register stuff
        //if ok > segue "ToLogin"
        
        //Check if fields are empty
        if let newEmail = emailFld.text, let newPw = pwFld.text, let newPwConfirm = pwConfirmFld.text {

            if newEmail.isEmpty {
                errMsg.text = "no email"
                errMsg.textColor = UIColor.ernoulRed
                return
            }
            
            if !newEmail.isEmpty && !newEmail.isValidEmail() {
                errMsg.text = "wrong email formatting"
                errMsg.textColor = UIColor.ernoulRed
                return
            }
            
            if newPw.isEmpty {
                errMsg.text = "no pw"
                errMsg.textColor = UIColor.ernoulRed
                return
            }
            
            if (newPw.count < 4) || (newPwConfirm.count < 4) {
                errMsg.text = "pw too short"
                errMsg.textColor = UIColor.ernoulRed
                return
            }
            
            if newPwConfirm != newPw {
                errMsg.text = "pw do not match"
                errMsg.textColor = UIColor.ernoulRed
                return
            }
            
            if newPw == newPwConfirm {
                StaticUser.instance.email = newEmail
                StaticUser.instance.password = newPw
                
                print("\(StaticUser.instance.email)")
                print("\(StaticUser.instance.password)")
                self.performSegue(withIdentifier: "ToRegisterUser", sender: self)
            }
        }
    }

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
