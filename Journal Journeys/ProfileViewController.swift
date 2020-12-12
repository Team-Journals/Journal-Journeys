//
//  ViewController.swift
//  JournalProfile
//
//  Created by Cathy Yue on 11/8/20.
//  Copyright © 2020 Cathy Yue. All rights reserved.
//

import UIKit
import Parse

class ProfileViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    

    
    @IBOutlet weak var themePicker: UIPickerView!
    
    @IBOutlet weak var colorPicker: UIPickerView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    let colors = ["White","Red","Orange","Yellow","Green","Blue","Purple","Black"]
    
    let themes = ["Cherry Blossoms", "Space", "Ocean", "Forest", "Cactus", "Pineapples", "Anchors", "Winter Wonderland", "aurora borealis"]
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(colors[row]=="White"){
            view.backgroundColor = .white
        }
        else if(colors[row]=="Red"){
            view.backgroundColor = .red
        }
        else if(colors[row]=="Orange"){
            view.backgroundColor = .orange
        }
        else if(colors[row]=="Yellow"){
            view.backgroundColor = .yellow
        }
        else if(colors[row]=="Green"){
            view.backgroundColor = .green
        }
        else if(colors[row]=="Blue"){
            view.backgroundColor = .blue
        }
        else if(colors[row]=="Purple"){
            view.backgroundColor = .purple
        }
        else if(colors[row]=="Black"){
            view.backgroundColor = .black
        }
    }
    
    
    
    
//    func numberOfComponents01(in themePickerView: UIPickerView) -> Int {
//        return 1
//    }
//    func themePickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return colors[row]
//    }
//    func themePickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return colors.count
//    }
//
//    func themePickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//
//
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle:nil)
        let loginViewController = main.instantiateViewController(identifier: "loginViewController")
        let sceneDelegate = self.view.window?.windowScene?.delegate as! SceneDelegate
        sceneDelegate.window?.rootViewController = loginViewController
        
    }
}

