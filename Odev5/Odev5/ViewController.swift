//
//  ViewController.swift
//  Odev5
//
//  Created by Oğuz Kanda on 2.10.2023.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var calculatorWorkings: UILabel!
    @IBOutlet weak var calculatorResults: UILabel!
    
    var workingsValue:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }
    
    func clearAll() {
        workingsValue = ""
        calculatorResults.text = ""
        calculatorWorkings.text = ""
    }
    
    func addToWorkings(value: String) {
        workingsValue = workingsValue + value
        calculatorWorkings.text = workingsValue
    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)

        }
        else {
            return String(format: "%.2f", result)

        }
    }
    

    @IBAction func allClearTapClicked(_ sender: Any) {
        clearAll()
    }
    @IBAction func deleteTapClicked(_ sender: Any) {
        if(!workingsValue.isEmpty) {
            workingsValue.removeLast()
            calculatorWorkings.text = workingsValue
        }
        
        
    }
    @IBAction func percentTabClicked(_ sender: Any) {
        addToWorkings(value: "%")
    }
    @IBAction func divideTapClicked(_ sender: Any) {
        addToWorkings(value: "/")

    }
    @IBAction func timesTapClicked(_ sender: Any) {
        addToWorkings(value: "*")

    }
    @IBAction func minusTapClicked(_ sender: Any) {
        addToWorkings(value: "-")

    }
    @IBAction func plusTapClicked(_ sender: Any) {
        addToWorkings(value: "+")

    }
    @IBAction func equalsTapClicked(_ sender: Any) {
        let checkedWorkingsForPercent = workingsValue.replacingOccurrences(of: "%", with: "*0.01")
        let expression = NSExpression(format: checkedWorkingsForPercent)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResults.text = resultString
    }
    
    
    
    @IBAction func decimalTapClicked(_ sender: Any) {
        addToWorkings(value: ".")

    }
    @IBAction func zeroTap(_ sender: Any) {
        addToWorkings(value: "0")

    }
    @IBAction func oneTap(_ sender: Any) {
        addToWorkings(value: "1")

    }
    @IBAction func twoTap(_ sender: Any) {
        addToWorkings(value: "2")

    }
    @IBAction func threeTap(_ sender: Any) {
        addToWorkings(value: "3")

    }
    @IBAction func fourTap(_ sender: Any) {
        addToWorkings(value: "4")

    }
    @IBAction func fiveTap(_ sender: Any) {
        addToWorkings(value: "5")

    }
    @IBAction func sixTap(_ sender: Any) {
        addToWorkings(value: "6")

    }
    @IBAction func sevenTap(_ sender: Any) {
        addToWorkings(value: "7")

    }
    @IBAction func eightTap(_ sender: Any) {
        addToWorkings(value: "8")

    }
    @IBAction func nineTap(_ sender: Any) {
        addToWorkings(value: "9")

    }
    
    

    
}
