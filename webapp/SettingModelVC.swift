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
        sender.selected = true
        maleUser = true
        selectGender(sender)
        deselectGender(FemaleButt)
    }
    
    @IBAction func FemaleTapped(sender: UIButton) {
        sender.selected = true
        maleUser = false
        selectGender(sender)
        deselectGender(MaleButt)
    }
    
    func selectGender(butt: UIButton) {
        if butt == MaleButt {
            butt.setImage(UIImage(named: "colour1"), forState: .Selected)
        } else {
            butt.setImage(UIImage(named: "colour2"),
                forState: .Selected)
        }
    }
    
    func deselectGender(butt: UIButton) {
        butt.selected = false
        if butt == MaleButt {
            butt.setImage(UIImage(named: "black1"), forState: .Normal)
        } else {
            butt.setImage(UIImage(named: "black2"),
                forState: .Normal)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
