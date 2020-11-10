//
//  registerViewController.swift
//  Journal Journeys
//
//  Created by Thuyvan on 11/9/20.
//

import UIKit
import Parse

class registerViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var birthdayField: UIDatePicker!
    
  //  var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        user.email = emailField.text
        
        user.signUpInBackground{(success, error) in
            if success{
                self.performSegue(withIdentifier: "completedSignUpSegue", sender: nil)
            } else{
                print("Error: \(error?.localizedDescription)")
            }
        }
        
    
        //birthday picker function here

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
