//
//  ViewController.swift
//  TipCalculator
//
//  Created by Surbhi Hajela on 01/08/20.
//  Copyright © 2020 Surbhi Hajela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountText: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipSegment: UISegmentedControl!
    

    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
       
        let bill = Double(billAmountText.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipSegment.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

}

