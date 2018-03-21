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
    
    func isValid(_ email: String) -> Bool {
        //Wtf is this regex though
        let emailRegEx = "(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"+"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"+"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"+"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"+"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"+"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"+"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        
        let emailTest = NSPredicate(format:"SELF MATCHES[c] %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    @IBAction func register(_ sender: Any) {
        //perform register stuff
        //if ok > segue "ToLogin"
        
        //Check if fields are empty
        if (pwFld.text != "") && (emailFld.text != "") {
            
//            //Check if email is valid
//            if isValid(emailFld.text!) == true {
//
//                //Check if pw length is sufficient
//                if (pwFld.text!.count > 5) || (pwConfirmFld.text!.count > 5) {
            
                    //Check if pw match
                    if pwFld.text == pwConfirmFld.text {
                        if let newUserEmail = emailFld.text {
                            StaticUser.instance.email = newUserEmail
                            print(newUserEmail)
                        }
                        if let newUserPw = pwFld.text {
                            StaticUser.instance.password = newUserPw
                            print(newUserPw)
                        }
                        
                        print("\(StaticUser.instance.email)")
                        print("\(StaticUser.instance.password)")
                        self.performSegue(withIdentifier: "ToLogin", sender: self)
                    }
//                }
//            }
            
        } else {
//            errMsg.text = "wrong tokens"
//            errMsg.textColor = UIColor.red
            print("fail")
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
