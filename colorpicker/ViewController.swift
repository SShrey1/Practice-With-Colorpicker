//
//  ViewController.swift
//  colorpicker
//
//  Created by user@59 on 02/09/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var resetbutt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    fileprivate func UpdateUI()
    {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn
        {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn
        {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn
        {
            blue = CGFloat(blueSlider.value)
        }
        view.backgroundColor = UIColor(red : red, green : green, blue : blue, alpha : 1.0)
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        UpdateUI()
    }
    
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        UpdateUI()
    }
    
    @IBAction func resetPress(_ sender: Any) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
    }
}


