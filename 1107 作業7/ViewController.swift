//
//  ViewController.swift
//  1107 作業7
//
//  Created by 泳逸 李 on 2017/11/7.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redText: UILabel!
    
    @IBOutlet weak var greenText: UILabel!
    
    @IBOutlet weak var blueText: UILabel!
    
    @IBOutlet weak var myView: UIView!
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    var redValue = 255
    var greenValue = 255
    var blueValue = 255
    
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
       redValue = Int(sender.value)
        redText.text = "R: \(redValue)"
        changeBackGroundColor()
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenValue = Int(sender.value)
        greenText.text = "G: \(greenValue)"
        changeBackGroundColor()
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueValue = Int(sender.value)
        blueText.text = "B: \(blueValue)"
        changeBackGroundColor()
    }
    
    func changeBackGroundColor(){
        //UIcolor中CFFloat數值須為0~1,需將結果/255
        myView.backgroundColor = UIColor(red: CGFloat(redValue)/255.0, green: CGFloat(greenValue)/255.0, blue: CGFloat(blueValue)/255.0, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

