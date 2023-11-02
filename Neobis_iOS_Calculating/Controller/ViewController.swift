//
//  ViewController.swift
//  Neobis_iOS_Calculating
//
//  Created by Alikhan Tursunbekov on 29/10/23.

import UIKit

class ViewController: UIViewController {
    
    var firstNumber = 0.0
    var secondNumber = 0.0
    var currentOperation: Operation?
    var operationPressed = false
    var equalShouldBePressed = false
    
    enum Operation {
        case add, subtract, multiply, divide, persantage, negativeSign, comma, equal
    }
    
    let calculatorView = CalculatorView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(calculatorView)
        setupAllTargets()
    }
    
    private func setupAllTargets() {
        calculatorView.clearButton.addTarget(self, action: #selector(clearPressed), for: .touchUpInside)
        calculatorView.button0.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        calculatorView.button1.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        calculatorView.button2.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        calculatorView.button3.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        calculatorView.button4.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        calculatorView.button5.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        calculatorView.button6.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        calculatorView.button7.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        calculatorView.button8.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        calculatorView.button9.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        //operations
        calculatorView.negativeButton.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        calculatorView.percentageButton.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        calculatorView.divideButton.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        calculatorView.multiplyButton.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        calculatorView.minusButton.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        calculatorView.plusButton.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        calculatorView.equalButton.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        calculatorView.dotButton.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
    }
    
    @objc func clearPressed() {
        operationPressed = false
        changeOperationButton()
        calculatorView.number.text = "0"
        currentOperation = nil
        firstNumber = 0
    }
    
    @objc func numberPressed(_ sender: UIButton) {
        let tag = sender.tag
        
        if calculatorView.number.text == "0" || operationPressed{
            calculatorView.number.text = "\(tag)"
            if operationPressed {
                operationPressed = false
                changeOperationButton()
            }
        } else if calculatorView.number.text == "-0" {
            calculatorView.number.text = "\(-tag)"
        } else if let text = calculatorView.number.text {
            calculatorView.number.text = "\(text)\(tag)"
        }
    }
    
    @objc func operationPressed(_ sender: UIButton) {
        let tag = sender.tag
        if let text = calculatorView.number.text, let value = Double(text.replacingOccurrences(of: ",", with: ".")) {
            if tag == 1 {
                calculatorView.number.text = "\(removeTrailingZeros(from: -value))"
            } else if tag == 2 {
                if value != 0 && firstNumber == 0 {
                    calculatorView.number.text = "\(removeTrailingZeros(from: value / 100.0))"
                } else {
                    calculatorView.number.text = "\(removeTrailingZeros(from: value * firstNumber / 100.0))"
                }
            } else if tag == 7 {
                calculatorView.number.text = calculatorView.number.text?.appending(",")
            } else {
                
                if operationPressed {
                    operationPressed = false
                    changeOperationButton()
                    equalShouldBePressed = false
                }
                
                if equalShouldBePressed {
                    equalPressed()
                }
                
                switch tag {
                case 3:
                    currentOperation = .divide
                    firstNumber = value
                    operationPressed = true
                    changeOperationButton()
                    equalShouldBePressed = true
                    break
                case 4:
                    currentOperation = .multiply
                    firstNumber = value
                    operationPressed = true
                    changeOperationButton()
                    equalShouldBePressed = true
                    break
                case 5:
                    currentOperation = .subtract
                    firstNumber = value
                    operationPressed = true
                    changeOperationButton()
                    equalShouldBePressed = true
                    break
                case 6:
                    currentOperation = .add
                    firstNumber = value
                    operationPressed = true
                    changeOperationButton()
                    equalShouldBePressed = true
                    break
                case 8:
                    equalPressed()
                    break
                default:
                    break
                }
            }
        } else {
            calculatorView.number.text = "Error"
        }
    }
    
    func equalPressed() {
        if !equalShouldBePressed {return}
        equalShouldBePressed = false
        if let operation = currentOperation {
            var secondNumber = 0.0
            if let text = calculatorView.number.text, let value = Double(text.replacingOccurrences(of: ",", with: ".")) {
                secondNumber = value
            }
            print("First: \(firstNumber) | Second: \(secondNumber)")
            switch operation {
            case .add:
                let result = firstNumber + secondNumber
                calculatorView.number.text = removeTrailingZeros(from: result)
                firstNumber = result
                break
            case .subtract:
                let result = firstNumber - secondNumber
                calculatorView.number.text = removeTrailingZeros(from: result)
                firstNumber = result
                break
            case .multiply:
                let result = firstNumber * secondNumber
                calculatorView.number.text = removeTrailingZeros(from: result)
                firstNumber = result
                break
            case .divide:
                if secondNumber == 0 {
                    calculatorView.number.text = "Error"
                    firstNumber = 0
                    break
                }
                let result = firstNumber / secondNumber
                calculatorView.number.text = removeTrailingZeros(from: result)
                firstNumber = result
                break
            default:
                break
            }
        }
    }
    
    func removeTrailingZeros(from number: Double) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 5
        if let formattedString = numberFormatter.string(from: NSNumber(value: number)) {
            return formattedString
        } else {
            return "\(number)"
        }
    }
    
    func changeOperationButton() {
        switch currentOperation {
        case .add:
            calculatorView.plusButton.backgroundColor = operationPressed ? .white : UIColor(hex: "#FD9E08")
            calculatorView.plusButton.setTitleColor(operationPressed ? UIColor(hex: "#FD9E08") : .white, for: .normal)
            break
        case .subtract:
            calculatorView.minusButton.backgroundColor = operationPressed ? .white : UIColor(hex: "#FD9E08")
            calculatorView.minusButton.setTitleColor(operationPressed ? UIColor(hex: "#FD9E08") : .white, for: .normal)
            break
        case .multiply:
            calculatorView.multiplyButton.backgroundColor = operationPressed ? .white : UIColor(hex: "#FD9E08")
            calculatorView.multiplyButton.setTitleColor(operationPressed ? UIColor(hex: "#FD9E08") : .white, for: .normal)
            break
        case .divide:
            calculatorView.divideButton.backgroundColor = operationPressed ? .white : UIColor(hex: "#FD9E08")
            calculatorView.divideButton.setTitleColor(operationPressed ? UIColor(hex: "#FD9E08") : .white, for: .normal)
            break
        default:
            break
        }
    }
}

