//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Lucas Santana Brito on 09/08/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    // MARK: - Atributos
    var total: String?
    var people: String?
    var tip: String?
    
    // MARK: - View life cycles

    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = total
        settingsLabel.text = "Split between \(people ?? "0") people, with \(tip ?? "0")% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
