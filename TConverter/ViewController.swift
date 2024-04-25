//
//  ViewController.swift
//  TConverter
//
//  Created by Jurabek Aminov on 16.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CelciumLabel: UILabel!
    
    @IBOutlet weak var FarenheitLabel: UILabel!
    
    @IBOutlet weak var Slider: UISlider!
    {
        didSet
        {
            Slider.minimumValue = 0
            Slider.maximumValue = 100
            Slider.value = 0
        }
    }
    
    @IBAction func SliderChanged(_ sender: UISlider)
    {
        let tempratureCelcius = Int(round(sender.value))
        CelciumLabel.text = "\(tempratureCelcius)ºC"
        let farenheitTemprature = Int(round((sender.value * 9 / 5) + 32))
        FarenheitLabel.text = "\(farenheitTemprature)ºF"
    }
}

