//
//  XibView.swift
//  xibView
//
//  Created by Egor Devyatov on 24.07.2019.
//  Copyright © 2019 Egor Devyatov. All rights reserved.
//

import UIKit

class XibView: UIView {
    
    @IBOutlet weak var xibLabel: UILabel!
    
    let aView: UIView = UIView()
    let bView: UIView = UIView()
    let cView: UIView = UIView()
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "XibView", bundle: Bundle.main).instantiate(withOwner: nil, options: nil).first as! UIView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        initializeSubViewA()
    }
    
    // ViewA Constraints
    func initializeSubViewA() {
        
        aView.backgroundColor = .red
        self.addSubview(aView)
        aView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: self,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .top,
                           multiplier: 1,
                           constant: 16).isActive = true
        
        NSLayoutConstraint(item: self,
                           attribute: .left,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .left,
                           multiplier: 1,
                           constant: 8).isActive = true
        
        NSLayoutConstraint(item: self,
                           attribute: .right,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .right,
                           multiplier: 1,
                           constant: 8).isActive = true
        
        
//        NSLayoutConstraint(item: aView, attribute:
//            NSLayoutConstraint.Attribute.width, relatedBy:
//            NSLayoutConstraint.Relation.equal, toItem: nil, attribute:
//            NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 200).isActive = true
//
//        NSLayoutConstraint(item: aView, attribute:
//            NSLayoutConstraint.Attribute.height, relatedBy:
//            NSLayoutConstraint.Relation.equal, toItem: nil, attribute:
//            NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100).isActive = true
//
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
    
//    func manualAddConstraint() {
//        // centerX constr
//        xibLabel.addConstraint(NSLayoutConstraint(item: xibLabel, attribute:
//            NSLayoutConstraint.Attribute.centerX, relatedBy:
//            NSLayoutConstraint.Relation.equal, toItem: self, attribute:
//            NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0))
//        // centerY constr
//        xibLabel.addConstraint(NSLayoutConstraint(item: xibLabel, attribute:
//            NSLayoutConstraint.Attribute.centerY, relatedBy:
//            NSLayoutConstraint.Relation.equal, toItem: self, attribute:
//            NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0))
//    }
}
