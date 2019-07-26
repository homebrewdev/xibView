//
//  newViewController.swift
//  xibView
//
//  Created by Egor Devyatov on 26.07.2019.
//  Copyright © 2019 Egor Devyatov. All rights reserved.
//

import UIKit

class newViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        let xibView = XibView.instanceFromNib()
        self.view = xibView
    }
}
