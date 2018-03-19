//
//  ViewController.swift
//  finalWithSegue
//
//  Created by Ernoul on 16/03/2018.
//  Copyright © 2018 Ernoul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RegisterDelegate, ProfileDelegate {
    
    @IBOutlet weak var emailFld: UITextField!
    @IBOutlet weak var pwFld: UITextField!
    @IBOutlet weak var errMsg: UILabel!
    
    @IBAction func login(_ sender: Any) {
        
        if (emailFld.text == "a" && pwFld.text == "a") {
            print("good login")
            self.performSegue(withIdentifier: "ToProfile", sender: self)
        } else {
            errMsg.text = "wrong tokens"
            errMsg.textColor = UIColor.red
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

