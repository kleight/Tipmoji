//
//  ViewController.swift
//  Tipmoji
//
//  Created by kleight on 9/14/16.
//  Copyright © 2016 kleight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billamountTextField: UITextField!
    @IBOutlet weak var tipamountLabel: UILabel!
    @IBOutlet weak var totalamountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var tip0BackgroundImageView: UIImageView!
    @IBOutlet weak var tip1BackgroundImageView: UIImageView!
    @IBOutlet weak var tip2BackgroundImageView: UIImageView!
    @IBOutlet weak var tip3BackgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tip0BackgroundImageView.hidden = true
        tip1BackgroundImageView.hidden = true
        tip2BackgroundImageView.hidden = true
        tip3BackgroundImageView.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   override func viewDidAppear(animated: Bool) {
        billamountTextField.becomeFirstResponder()
    }


    
    @IBAction func calculateTip(sender: AnyObject) {
        
    
        let tipPercentages = [0.15, 0.2, 0.25, 0.3]
        
        let billamount = Double(billamountTextField.text!) ?? 0
        let tipamount = billamount * tipPercentages[tipControl.selectedSegmentIndex]
        let totalamount = billamount + tipamount
        
        tipamountLabel.text = String(format: "$%.2f", tipamount)
        totalamountLabel.text = String(format: "$%.2f", totalamount)
        
        
        tip0BackgroundImageView.hidden = true
        tip1BackgroundImageView.hidden = true
        tip2BackgroundImageView.hidden = true
        tip3BackgroundImageView.hidden = true
        
        
        if tipControl.selectedSegmentIndex == 0 {
            tip0BackgroundImageView.hidden = false
        }
        if tipControl.selectedSegmentIndex == 1 {
            tip1BackgroundImageView.hidden = false
        }
        if tipControl.selectedSegmentIndex == 2 {
            tip2BackgroundImageView.hidden = false
        }
        if tipControl.selectedSegmentIndex == 3 {
            tip3BackgroundImageView.hidden = false
        }
        
    }
    
    
}

