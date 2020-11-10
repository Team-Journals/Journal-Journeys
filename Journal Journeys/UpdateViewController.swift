//
//  UpdateViewController.swift
//  Journal-Journies
//
//  Created by Ian Carter on 11/9/20.
//

import UIKit
import Parse

class UpdateViewController: UIViewController {
    
        @IBOutlet weak var changeUsernameField: UITextField!
    
        @IBOutlet weak var changePasswordField: UITextField!
    
    
        @IBOutlet weak var changeEmailField: UITextField!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func onSubmit(_ sender: Any) {
        
        var user = PFUser.current()!
    
        let username = changeUsernameField.text
        let password = changePasswordField.text
        let email = changeEmailField.text
        
           

        
        user["username"] = username
        user["password"] = password
        user["email"] = email
        
           //You can change more fields here, this just sets the new username.

           user.saveInBackground()
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
