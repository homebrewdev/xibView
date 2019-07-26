//
//  ViewController.swift
//  xibView
//
//  Created by Egor Devyatov on 24.07.2019.
//  Copyright © 2019 Egor Devyatov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var aView: UIView = UIView()
    var bView: UIView = UIView()
    var cView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        let xibView = XibView.instanceFromNib()
        self.view.addSubview(xibView)
        initializeSubViewA()
        initializeSubViewB()
        initializeSubViewС()
        constraintsButton()
    }
    
    // создаем кастомную кнопку
    func generateButton(title: String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.orange
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        return button
    }
    
    // View A Constraints
    func initializeSubViewA() {
        
        aView.backgroundColor = .red
        view.addSubview(aView)
        aView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint(item: aView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 50).isActive = true
        
        NSLayoutConstraint(item: aView, attribute:
        NSLayoutConstraint.Attribute.left, relatedBy:
        NSLayoutConstraint.Relation.equal, toItem: view, attribute:
        NSLayoutConstraint.Attribute.left, multiplier: 1, constant: 50).isActive = true
        
        NSLayoutConstraint(item: aView, attribute:
        NSLayoutConstraint.Attribute.centerY, relatedBy:
        NSLayoutConstraint.Relation.equal, toItem: view, attribute:
        NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0).isActive = false
        
        NSLayoutConstraint(item: aView, attribute:
        NSLayoutConstraint.Attribute.width, relatedBy:
        NSLayoutConstraint.Relation.equal, toItem: nil, attribute:
        NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 200).isActive = true
        
        NSLayoutConstraint(item: aView, attribute:
        NSLayoutConstraint.Attribute.height, relatedBy:
        NSLayoutConstraint.Relation.equal, toItem: nil, attribute:
        NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100).isActive = true
        
    }
    // View B Constraints
    func initializeSubViewB() {
        
        bView.backgroundColor = UIColor.green
        view.addSubview(bView)
        bView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: bView, attribute:
            NSLayoutConstraint.Attribute.top, relatedBy:
            NSLayoutConstraint.Relation.equal, toItem: view, attribute:
            NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 175).isActive = true
        
        NSLayoutConstraint(item: bView, attribute:
            NSLayoutConstraint.Attribute.left, relatedBy:
            NSLayoutConstraint.Relation.equal, toItem: view, attribute:
            NSLayoutConstraint.Attribute.left, multiplier: 1, constant: 50).isActive = true
        
        NSLayoutConstraint(item: bView, attribute:
            NSLayoutConstraint.Attribute.centerY, relatedBy:
            NSLayoutConstraint.Relation.equal, toItem: view, attribute:
            NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0).isActive = false
        
        NSLayoutConstraint(item: bView, attribute:
            NSLayoutConstraint.Attribute.right, relatedBy:
            NSLayoutConstraint.Relation.lessThanOrEqual, toItem: view, attribute:
            NSLayoutConstraint.Attribute.right, multiplier: 1, constant: 50).isActive = true
        
        NSLayoutConstraint(item: bView, attribute:
            NSLayoutConstraint.Attribute.width, relatedBy:
            NSLayoutConstraint.Relation.equal, toItem: nil, attribute:
            NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 150).isActive = true
        
        NSLayoutConstraint(item: bView, attribute:
            NSLayoutConstraint.Attribute.height, relatedBy:
            NSLayoutConstraint.Relation.equal, toItem: nil, attribute:
            NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100).isActive = true
        
    }
    // View C Constraints
    func initializeSubViewС() {
        
        cView.backgroundColor = UIColor.black
        view.addSubview(cView)
        cView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: cView, attribute:
            NSLayoutConstraint.Attribute.top, relatedBy:
            NSLayoutConstraint.Relation.equal, toItem: view, attribute:
            NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 300).isActive = true
        
        NSLayoutConstraint(item: cView, attribute:
            NSLayoutConstraint.Attribute.left, relatedBy:
            NSLayoutConstraint.Relation.equal, toItem: view, attribute:
            NSLayoutConstraint.Attribute.left, multiplier: 1, constant: 150).isActive = true
        
        NSLayoutConstraint(item: cView, attribute:
            NSLayoutConstraint.Attribute.width, relatedBy:
            NSLayoutConstraint.Relation.equal, toItem: nil, attribute:
            NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100).isActive = true
        
        NSLayoutConstraint(item: cView, attribute:
            NSLayoutConstraint.Attribute.height, relatedBy:
            NSLayoutConstraint.Relation.equal, toItem: nil, attribute:
            NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100).isActive = true
        
    }
    
    // констрайнты для кнопки
    func constraintsButton() {
        let btn = generateButton(title: "Some Button")
        //btn.frame = CGRect(x: 150, y: 500, width: 150, height: 40)
        self.view.addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        //btn.leadingAnchor.constraint(equalTo: view.rightAnchor).isActive = false
        //btn.topAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true // top кнопки станет центрY у view
        btn.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true // кнопка прилипнет к правому краю view
        
        //btn.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

