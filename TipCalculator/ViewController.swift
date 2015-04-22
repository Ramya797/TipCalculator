//
//  ViewController.swift
//  TipCalculator
//
//  Created by Rhiya Manchikanti on 4/17/15.
//  Copyright (c) 2015 Rhiya Manchikanti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.text = "$0.0";
        totalLabel.text="$0.0";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func textAction(sender: AnyObject) {
        
        var tipPercentages = [0.18,0.2,0.22];
        var percentageTip = tipPercentages[tipControl.selectedSegmentIndex];
        
        var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * percentageTip;
        
        var total = billAmount + tip;
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
    
    @IBAction func stepperVal(sender: AnyObject) {
       // sender.value
    }
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var numOFPeople: UIStepper!
   
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!

    @IBOutlet weak var billField: UITextField!

    @IBOutlet weak var totalLabel: UILabel!
}

