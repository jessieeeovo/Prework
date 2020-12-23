//
//  ViewController.swift
//  Prework
//
//  Created by Jingqi Yao on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func sliderChange(_ sender: Any) {
        tipPercentLabel.text = String(format: "%.2f", tipSlider.value * 100) + "%"
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tip = bill * Double(tipSlider.value)
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

