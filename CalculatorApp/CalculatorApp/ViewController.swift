//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Arrepu,Sarath on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var out: UILabel!
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var caloperator:Character = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button6(_ sender: UIButton) {
        out.text = out.text! + "6"
        if operand1 == -1.1{
            operand1 = 6
        }
        else {
            operand2 = 6
        }
    }
    @IBAction func Button3(_ sender: UIButton) {
        out.text = out.text! + "3"
        if operand2 == -1.1{
            operand2 = 3
        }
        else {
            operand1 = 3
        }
    }
    
    @IBAction func Buttonplus(_ sender: UIButton) {
        out.text = out.text! + "+"
        if caloperator == " "{
            caloperator = "+"
        }
    }
    @IBAction func Buttonequals(_ sender: UIButton) {
        out.text = out.text! + "="
        if (caloperator == "+"){
            out.text = "\(operand1 + operand2)"
        }
    }
}

