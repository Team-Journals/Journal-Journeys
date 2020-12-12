//
//  UpdateViewController.swift
//  Journal-Journies
//
//  Created by Ian Carter on 11/9/20.
//

import UIKit
import Parse

class UpdateViewController:ProfileViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    
    @IBOutlet weak var changeNameField: UITextField!
    
    @IBOutlet weak var changeUsernameField: UITextField!
    
    @IBOutlet weak var changePasswordField: UITextField!
    
    @IBOutlet weak var changeEmailField: UITextField!
    
    @IBAction func onImportImage(_ sender: Any) {
        
    }
    
    var newName : String!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func onSubmit(_ sender: Any) {
        
        var user = PFUser.current()!
        let profile = PFObject(className: "Profile")
        profile["name"] = changeNameField.text!
        profile.saveInBackground { (success, error) in
            if success {
                print("Name Changed")
            }
            else{
                print("ERROR")
            }
        }
        
//        func rename(changeNameField: String? = nil){
//            if changeNameField != nil {
//                newName = changeNameField
//                nameLabel.text = "\(String(describing: newName))"
//
//            }
//        }
//
//        rename()
     
        let username01 = changeUsernameField.text
        let password01 = changePasswordField.text
        let email01 = changeEmailField.text
        
        
        
       
        
        if !username01!.isEmpty {
            user["username"] = username01
        }
//        else{
//            user["username"] = PFUser.current()?.username
//        }
        if !password01!.isEmpty {
            user["password"] = password01
        }
//        else{
//            user["password"] = PFUser.current()?.password
//        }
        if !email01!.isEmpty{
            user["email"] = email01
        }
//        else{
//            user["email"] = PFUser.current()?.email
//        }
        
        
        
        
           //You can change more fields here, this just sets the new username.
        

        // ASK LIZ AND ANDRES----------------------------
        
//        var query = PFQuery(className: "Profile")
//        query.getObjectInBackground(withId: "Usx4oZeyeK"){
//            (parseObject: PFObject?, error: NSError?) -> Void in
//            if error == nil && parseObject != nil {
//                print(parseObject)
//            }
//            else{
//                print(error)
//            }
//        }

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
