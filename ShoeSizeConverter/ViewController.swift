//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Olaf Peters on 06.12.14.
//  Copyright (c) 2014 Olaf Peters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var WomansLabel: UILabel!
    @IBOutlet weak var WomanEULabel: UILabel!
    @IBOutlet weak var MensLabel: UILabel!
    @IBOutlet weak var MenEULabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ConvertButtonPressed(sender: UIButton) {
        var womanCalculated = Double((inputTextField.text as NSString).doubleValue)
        WomanEULabel.text = "\(womanCalculated + 30.5)"
        
        var menCalculated = inputTextField.text.toInt()!
        MenEULabel.text = "\(menCalculated + 30)"
        
        WomansLabel.hidden = false
        WomanEULabel.hidden = false
        MensLabel.hidden = false
        MenEULabel.hidden = false
    }
    


}

