//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var billtextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    
    // MARK: Atributos
    var percentSelect = 0.0
    var steppValue = 0
    
    // MARK: - IBAction
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billtextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let numberPercent = percentStringToDouble(percent: sender.currentTitle ?? "0%")
        
        percentSelect = numberPercent / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        steppValue = Int(sender.value)
        splitNumberLabel.text = String(steppValue)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        guard let bill = Double(billtextField.text ?? "0.0") else { return }
        let tip = percentSelect * bill
        let billTotal = (tip + bill) / Double(steppValue)
        
        print(String(format: "%.2f", billTotal))
    }
    
    // MARK: - Functions
    
    private func calculate() {
        
    }
    
    private func percentStringToDouble(percent: String) -> Double {
        let numberString = String(percent.dropLast())
        
        let numberPercent = Double(numberString)
        
        return numberPercent ?? 0.0
    }
}

