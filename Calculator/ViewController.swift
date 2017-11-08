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
    var first: Bool?
    var second: Bool?
    var operation: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    }
    
    @IBAction func clickedFalse(_ sender: UIButton) {
        resultLabel.text = "false"
        if first != nil {
            second = false
        } else {
            first = false
        }
    }
    
    @IBAction func clickedClear(_ sender: UIButton) {
        resultLabel.text = " "
        first = nil
        second = nil
        resultLabel.alpha = 1
    }
    
    @IBAction func clickedResult(_ sender: UIButton) {
        resultLabel.alpha = 0.5
        if (operation == "Equal") {
            resultLabel.text = first==second ? "true" : "false"
        } else if (operation == "And") {
            resultLabel.text = first! && second! ? "true" : "false"
        }
        first = nil
        second = nil
        operation = nil
    }
}

