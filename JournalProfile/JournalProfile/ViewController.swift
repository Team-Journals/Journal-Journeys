//
//  ViewController.swift
//  JournalProfile
//
//  Created by james on 11/8/20.
//  Copyright © 2020 Cathy Yue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    let colors = ["White","Red","Orange","Yellow","Green","Blue","Purple","Black"]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        if(colors[row]=="White"){
//            view.backgroundColor = .white
//        }
//        else if(colors[row]=="Red"){
//            view.backgroundColor = .red
//        }
//        else if(colors[row]=="Orange"){
//            view.backgroundColor = .orange
//        }
//        else if(colors[row]=="Yellow"){
//            view.backgroundColor = .yellow
//        }
//        else if(colors[row]=="Green"){
//            view.backgroundColor = .green
//        }
//        else if(colors[row]=="Blue"){
//            view.backgroundColor = .blue
//        }
//        else if(colors[row]=="Purple"){
//            view.backgroundColor = .purple
//        }
//        else if(colors[row]=="Black"){
//            view.backgroundColor = .black
//        }
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

