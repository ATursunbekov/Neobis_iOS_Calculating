//
//  ViewController.swift
//  Neobis_iOS_Calculating
//
//  Created by Alikhan Tursunbekov on 29/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let calculatorView = CalculatorView(frame: UIScreen.main.bounds)
        
        view.addSubview(calculatorView)
    }
}

