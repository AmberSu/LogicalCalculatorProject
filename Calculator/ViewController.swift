//
//  ViewController.swift
//  Calculator
//
//  Created by MacOS on 08/11/2017.
//  Copyright © 2017 amberApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonTrue: UIButton!
    @IBOutlet weak var buttonFalse: UIButton!
    
    var first: Bool?
    var second: Bool?
    var operation: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeRadius()
    }
    
    func changeRadius() {
        buttonTrue.layer.cornerRadius = 24
        buttonFalse.layer.cornerRadius = 24
    }
    
    // MARK: Buttons Actions
    
    @IBAction func clickedEqual(_ sender: UIButton) {
        operation = "Equal"
    }
    
    @IBAction func clickedAnd(_ sender: UIButton) {
        operation = "And"
    }
    
    @IBAction func clickedNotEqual(_ sender: UIButton) {
        operation = "NotEqual"
    }
    
    @IBAction func clickedOr(_ sender: UIButton) {
        operation = "Or"
    }
    @IBAction func clickedTrue(_ sender: UIButton) {
        resultLabel.text = "true"
        if (first != nil) {
            second = true
        } else {
            first = true
        }
        resultLabel.backgroundColor = UIColor(red: 51/255, green: 102/255, blue: 216/255, alpha: 1.0)
    }
    
    @IBAction func clickedFalse(_ sender: UIButton) {
        resultLabel.text = "false"
        if first != nil {
            second = false
        } else {
            first = false
        }
        resultLabel.backgroundColor = UIColor(red: 51/255, green: 102/255, blue: 216/255, alpha: 1.0)
    }
    
    @IBAction func clickedClear(_ sender: UIButton) {
        resultLabel.text = ""
        first = nil
        second = nil
        resultLabel.backgroundColor = UIColor(red: 51/255, green: 102/255, blue: 216/255, alpha: 1.0)
    }
    
    @IBAction func clickedResult(_ sender: UIButton) {
        if (operation == "Equal") {
                resultLabel.text = first == second ? "true" : "false"
        } else if (operation == "NotEqual") {
            resultLabel.text = first != second ? "true" : "false"
        } else if (operation == "And") {
            resultLabel.text = first! && second! ? "true" : "false"
        } else if (operation == "Or") {
            resultLabel.text = first! || second! ? "true" : "false"
        }
        
        if resultLabel.text == "true" {
            resultLabel.backgroundColor = UIColor(red: 0/255, green: 121/255, blue: 1/255, alpha: 1.0)
        } else {
            resultLabel.backgroundColor = UIColor(red: 176/255, green: 50/255, blue: 28/255, alpha: 1.0)
        }
        first = nil
        second = nil
        operation = nil
    }
}

