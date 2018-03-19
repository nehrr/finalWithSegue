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
    
    @IBAction func register(_ sender: Any) {
        //perform register stuff
        //if ok > segue "ToLogin"
        if (emailFld.text == "a" && pwFld.text == pwConfirmFld.text) {
            print("good tokens")
            StaticUser.instance.user?.email = emailFld!.text!
            StaticUser.instance.user?.password = pwFld!.text!
            print("\(StaticUser.instance.user?.email) & \(StaticUser.instance.user?.password)")
            self.performSegue(withIdentifier: "ToLogin", sender: self)
        } else {
//            errMsg.text = "wrong tokens"
//            errMsg.textColor = UIColor.red
        }
    }
    
    var delegate: RegisterDelegate?

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
