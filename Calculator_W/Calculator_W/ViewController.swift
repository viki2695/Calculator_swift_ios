//
//  ViewController.swift
//  Calculator_W
//
//  Created by vigneswaran on 15/02/18.
//  Copyright © 2018 vigneswaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var laNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var newOperation = true
    func AddNumberToLabel(number:String){
        var textNumber = String(laNumber.text!)
        if newOperation{
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        laNumber.text = textNumber
    }
    
    @IBAction func AddBu0(_ sender: Any) {
        AddNumberToLabel(number: "0")
    }
    
    @IBAction func AddBuDot(_ sender: Any) {
        AddNumberToLabel(number: ".")
    }
    
    @IBAction func AddBu1(_ sender: Any) {
        AddNumberToLabel(number: "1")
    }
    
    @IBAction func AddBu2(_ sender: Any) {
        AddNumberToLabel(number: "2")
    }
    
    @IBAction func AddBu3(_ sender: Any) {
        AddNumberToLabel(number: "3")
    }
    
    @IBAction func AddBu4(_ sender: Any) {
        AddNumberToLabel(number: "4")
    }
    
    @IBAction func AddBu5(_ sender: Any) {
        AddNumberToLabel(number: "5")
    }
    
    @IBAction func AddBu6(_ sender: Any) {
        AddNumberToLabel(number: "6")
    }
    
    @IBAction func AddBu7(_ sender: Any) {
        AddNumberToLabel(number: "7")
    }
    @IBAction func AddBu8(_ sender: Any) {
        AddNumberToLabel(number: "8")
    }
    
    @IBAction func AddBu9(_ sender: Any) {
        AddNumberToLabel(number: "9")
    }
    
    //function for math operation
    var op = "+"
    var number1:Double?
    
    @IBAction func buMul(_ sender: Any) {
        op = "*"
        number1 = Double(laNumber.text!)
        newOperation = true
    }
    @IBAction func buDiv(_ sender: Any) {
        op = "/"
        number1 = Double(laNumber.text!)
        newOperation = true
    }
    
    @IBAction func buSub(_ sender: Any) {
        op = "-"
        number1 = Double(laNumber.text!)
        newOperation = true
    }
    
    @IBAction func buAdd(_ sender: Any) {
        op = "+"
        number1 = Double(laNumber.text!)
        newOperation = true
    }
    
    @IBAction func buClear(_ sender: Any) {
        laNumber.text = "0"
        newOperation = true
    }
    @IBAction func buMinus(_ sender: Any) {
        var textNumber = String(laNumber.text!)
        textNumber = "-" + textNumber
        laNumber.text = textNumber
    }
    @IBAction func buMod(_ sender: Any) {
        var number1 = Double(laNumber.text!)
        number1 = number1! / 100.0
        laNumber.text = String(number1!)
        newOperation = true
    }
    @IBAction func buEqual(_ sender: Any) {
        let number2 = Double(laNumber.text!)
        var results: Double?
        switch op {
        case "*":
            results = number1! * number2!
        case "/":
            results = number1! / number2!
        case "-":
            results = number1! - number2!
        case "+":
            results = number1! + number2!
        default:
            results = 0.0
        }
        
        laNumber.text = String(results!)
        newOperation = true
    }
    
}

