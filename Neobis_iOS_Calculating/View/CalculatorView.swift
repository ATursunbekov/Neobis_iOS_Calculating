//
//  CalculatorVIew.swift
//  Neobis_iOS_Calculating
//
//  Created by Alikhan Tursunbekov on 29/10/23.

import Foundation
import UIKit

class CalculatorView: UIView {
    
    lazy var number: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 65)
        label.textColor = .white
        label.textAlignment = .right
        label.text = "0"
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    //MARK: First raw
    lazy var clearButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#A3A4A5")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("C", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        return button
    }()
    lazy var negativeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#A3A4A5")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.tag = 1
        return button
    }()
    lazy var percentageButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#A3A4A5")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("%", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.tag = 2
        return button
    }()
    lazy var divideButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#FD9E08")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("÷", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45)
        button.tag = 3
        return button
    }()
    
    //MARK: SecondRow
    lazy var button7: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("7", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 7
        return button
    }()
    lazy var button8: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("8", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 8
        return button
    }()
    lazy var button9: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("9", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 9
        return button
    }()
    lazy var multiplyButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#FD9E08")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("×", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45)
        button.tag = 4
        return button
    }()
    
    //MARK: Third row
    lazy var button4: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("4", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 4
        return button
    }()
    lazy var button5: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("5", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 5
        return button
    }()
    lazy var button6: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("6", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 6
        return button
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#FD9E08")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("-", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45)
        button.tag = 5
        return button
    }()
    
    //MARK: Forth row
    lazy var button1: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("1", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 1
        return button
    }()
    lazy var button2: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("2", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 2
        return button
    }()
    lazy var button3: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("3", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 3
        return button
    }()
    lazy var plusButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#FD9E08")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("+", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        button.tag = 6
        return button
    }()
    
    //MARK: Fifth row
    lazy var button0: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("0", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.titleLabel?.textAlignment = .left
        button.contentHorizontalAlignment = .leading
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: DynamicW(30), bottom: 0, right: 0)
        button.tag = 0
        return button
    }()
    
    lazy var dotButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#333333")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle(",", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.tag = 7
        return button
    }()
    
    lazy var equalButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(hex: "#FD9E08")
        button.layer.cornerRadius = DynamicW(40)
        button.setTitle("=", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        button.tag = 8
        return button
    }()
    
    lazy var firstRow: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        return stackView
    }()
    
    lazy var secondRow: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        return stackView
    }()
    
    lazy var thirdRow: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        return stackView
    }()
    
    lazy var forthRow: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        return stackView
    }()
    
    lazy var fifthRow: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.black
        
        setupConstraints()
    }
    
    func setupConstraints() {
        addSubview(number)
        addSubview(firstRow)
        addSubview(secondRow)
        addSubview(thirdRow)
        addSubview(forthRow)
        addSubview(fifthRow)
        firstRow.addArrangedSubview(clearButton)
        firstRow.addArrangedSubview(negativeButton)
        firstRow.addArrangedSubview(percentageButton)
        firstRow.addArrangedSubview(divideButton)
        secondRow.addArrangedSubview(button7)
        secondRow.addArrangedSubview(button8)
        secondRow.addArrangedSubview(button9)
        secondRow.addArrangedSubview(multiplyButton)
        thirdRow.addArrangedSubview(button4)
        thirdRow.addArrangedSubview(button5)
        thirdRow.addArrangedSubview(button6)
        thirdRow.addArrangedSubview(minusButton)
        forthRow.addArrangedSubview(button1)
        forthRow.addArrangedSubview(button2)
        forthRow.addArrangedSubview(button3)
        forthRow.addArrangedSubview(plusButton)
        fifthRow.addArrangedSubview(button0)
        fifthRow.addArrangedSubview(dotButton)
        fifthRow.addArrangedSubview(equalButton)
        
        [number, firstRow, plusButton, minusButton, equalButton, multiplyButton, divideButton, clearButton, negativeButton, percentageButton, secondRow, button7, button8, button9, thirdRow, button4, button5, button6, button3, button2, button1, forthRow, fifthRow, button0, dotButton].forEach{$0.translatesAutoresizingMaskIntoConstraints = false}
        
        NSLayoutConstraint.activate([
            number.bottomAnchor.constraint(equalTo: firstRow.topAnchor, constant: -30),
            number.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            number.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            firstRow.bottomAnchor.constraint(equalTo: secondRow.topAnchor, constant: -15),
            firstRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            firstRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            firstRow.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            
            clearButton.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            clearButton.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            negativeButton.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            negativeButton.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            percentageButton.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            percentageButton.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            divideButton.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            divideButton.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            
            secondRow.bottomAnchor.constraint(equalTo: thirdRow.topAnchor, constant: -15),
            secondRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            secondRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            secondRow.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            
            button7.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button7.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            button8.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button8.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            button9.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button9.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            multiplyButton.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            multiplyButton.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            
            thirdRow.bottomAnchor.constraint(equalTo: forthRow.topAnchor, constant: -15),
            thirdRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            thirdRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            thirdRow.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            
            button4.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button4.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            button5.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button5.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            button6.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button6.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            minusButton.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            minusButton.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            
            forthRow.bottomAnchor.constraint(equalTo: fifthRow.topAnchor, constant: -15),
            forthRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            forthRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            forthRow.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            
            button1.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button1.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            button2.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button2.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            button3.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button3.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            plusButton.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            plusButton.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            
            fifthRow.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            fifthRow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            fifthRow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            fifthRow.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            
            button0.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            button0.widthAnchor.constraint(equalToConstant: DynamicW(180)),
            dotButton.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            dotButton.widthAnchor.constraint(equalToConstant: DynamicW(80)),
            equalButton.heightAnchor.constraint(equalToConstant: DynamicW(80)),
            equalButton.widthAnchor.constraint(equalToConstant: DynamicW(80)),
        ])
    }
    
    private func DynamicH(_ height: Double) -> Double {
        return UIScreen.main.bounds.height * height / 896
    }
    
    private func DynamicW(_ width: Double) -> Double {
        return UIScreen.main.bounds.width * width / 414
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
