//
//  ComposeViewController.swift
//  Journal Journeys
//
//  Created by Kimberly Le on 11/15/20.
//

import UIKit
import Parse

class ComposeViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var entryField: UITextView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func onSaveEntryButton(_ sender: Any) {
        let entry = PFObject(className: "Entries")
        entry["textBody"] = entryField.text!
        entry["author"] = PFUser.current()! //idk what we gone be using this for but maybe we can use it later idk
        
        entry.saveInBackground { (success, error) in
            if success{
                print("saved!")
            }
            else{
                print("error!")
            }
        }
    }
    
    override func viewDidLoad() {
          super.viewDidLoad()
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+100)
          

          // Do any additional setup after loading the view.
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
