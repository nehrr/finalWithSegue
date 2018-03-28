//
//  UserController.swift
//  finalWithSegue
//
//  Created by Ernoul on 28/03/2018.
//  Copyright © 2018 Ernoul. All rights reserved.
//

import UIKit

class RegisterUserController: UIViewController {
    
    @IBOutlet weak var nameFld: UITextField!
    @IBOutlet weak var lastnameFld: UITextField!
    
    @IBAction func register(_ sender: Any) {
        if let name = nameFld.text, let lastname = lastnameFld.text {
            if (name == "") || (lastname == "") {
                //errMsg
                return
            } else {
                
                StaticUser.instance.name = name
                StaticUser.instance.lastname = lastname
                
                self.performSegue(withIdentifier: "ToLoginAfterRegister", sender: self)
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
