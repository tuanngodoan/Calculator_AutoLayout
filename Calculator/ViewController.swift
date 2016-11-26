//
//  ViewController.swift
//  Calculator
//
//  Created by Doãn Tuấn on 11/25/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var distanceBetweenInputTextFieldAndResultLable: NSLayoutConstraint!
    
    @IBOutlet weak var distanceBetweenResultLableAndMiddleView: NSLayoutConstraint!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var resultLable: UILabel!
    
    
    // MARK Variabels
    
    var isTappingNumber : Bool     = false
    var isEndOperator   : Bool     = true
    var firstNumber     : Double   = 0
    var secondNumber    : Double   = 0
    var operation       : String   = ""
    
    // 
    
    @IBOutlet weak var zeroNumber: UIButton!
    
    
    ///
    override func viewDidLoad() {
        super.viewDidLoad()
            inputTextField.isUserInteractionEnabled = false
    }

    
    func updateConstrains(){
        
        let scale = UIScreen.main.bounds.size.height / 667
        
        distanceBetweenInputTextFieldAndResultLable.constant = UIScreen.main.bounds.size.height > 480 ?
            distanceBetweenInputTextFieldAndResultLable.constant * scale : distanceBetweenInputTextFieldAndResultLable.constant * 0.1
        
        distanceBetweenResultLableAndMiddleView.constant = UIScreen.main.bounds.size.height > 480 ?
            distanceBetweenResultLableAndMiddleView.constant * scale : distanceBetweenResultLableAndMiddleView.constant * 0.1
    }


    
    // MARK : Action
    
    @IBAction func numberAction(_ sender: UIButton) {
        
        zeroNumber.isUserInteractionEnabled = true
        
        let number  = sender.currentTitle
        
        if isTappingNumber == true {
            inputTextField.text = inputTextField.text! + number!
        }else{
            inputTextField.text = number
            isTappingNumber = true
        }
        
    }
    
    @IBAction func operatorAction(_ sender: UIButton) {
        
        operation = sender.currentTitle!
        
        if let inputOperation = Double(inputTextField.text!){
            
            if isEndOperator == true {
                firstNumber = inputOperation
                isEndOperator = false
                
            }else{
                firstNumber = Double(resultLable.text!)!
                inputTextField.text = "\(firstNumber)"
            }
            
        }else{
          // input number
        }
        
        isTappingNumber = false
        
        if operation == "%"{
            equalAction(sender)
        }else if operation == "+/-"{
            equalAction(sender)
        }
    
        if operation == "/"{
            zeroNumber.isUserInteractionEnabled = false
        }
        
    }
    
    
    @IBAction func equalAction(_ sender: UIButton) {
        
        var result : Double = 0
        
        if  let realSecondNumber = Double(inputTextField.text!){
            secondNumber =  realSecondNumber
        }
        
        switch  operation {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "/":
            
            result = firstNumber / secondNumber
        case "+/-":
            if firstNumber < 0 {
                firstNumber = fabs(firstNumber)
                result = firstNumber
            }else{
                firstNumber  = -1*firstNumber
                result = firstNumber
            }
            resultLable.text = "\(result)"
        case "%":
            result = firstNumber/100
            resultLable.text = "\(result)"
        default:
            result = Double(inputTextField.text!)!
        }
        resultLable.text = "\(result)"
    }
    
    @IBAction func ACAction(_ sender: UIButton) {
         isTappingNumber    = false
         isEndOperator      = true
         firstNumber        = 0
         secondNumber       = 0
         operation          = ""
         inputTextField.text = ""
         resultLable.text    = "0"
    }
    
}

