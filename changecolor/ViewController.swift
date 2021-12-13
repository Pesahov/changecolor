//
//  ViewController.swift
//  changecolor
//
//  Created by Shilol Pesahov on 10/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 10
        
        redLabel.font = redLabel.font.withSize(17)
        greenLabel.font = greenLabel.font.withSize(17)
        blueLabel.font = blueLabel.font.withSize(17)
        
        redSlider.value = 0.3
        greenSlider.value = 0.5
        blueSlider.value = 0.8
        
    }

    @IBAction func rgbColor() {
        
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
        let colorRed = CGFloat(redSlider.value)
        let colorGreen = CGFloat(greenSlider.value)
        let colorBlue = CGFloat(blueSlider.value)
    
        mainView.backgroundColor = UIColor(
            red: colorRed,
            green: colorGreen,
            blue: colorBlue,
            alpha: 1)
        
        redLabel.text = String(round(redSlider.value * 10) / 10)
        greenLabel.text = String(round(greenSlider.value * 10) / 10)
        blueLabel.text = String(round(blueSlider.value * 10) / 10)
    }
    
}


