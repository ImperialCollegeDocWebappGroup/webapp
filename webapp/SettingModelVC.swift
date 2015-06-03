//
//  SettingModelVC.swift
//  webapp
//
//  Created by Timeless on 03/06/2015.
//  Copyright (c) 2015 Shan, Jinyi. All rights reserved.
//

import UIKit

class SettingModelVC: UIViewController {

    var maleUser: Bool = true
    
    @IBOutlet weak var FemaleButt: UIButton!
    @IBOutlet weak var MaleButt: UIButton!
    @IBOutlet weak var txtHeight:
        UITextField!
    @IBOutlet weak var txtWeight:
        UITextField!
    @IBOutlet weak var SkinColourSlider: UISlider!
    @IBAction func SaveModelTapped(sender: UIButton) {
        // pop up message
        
    }
   
    @IBAction func MaleTapped(sender: UIButton) {
        maleUser = true
        sender.setImage(<#image: UIImage?#>, forState: <#UIControlState#>)
    }
    
    @IBAction func FemaleTapped(sender: UIButton) {
        maleUser = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
