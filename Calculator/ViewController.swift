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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func updateConstrains(){
        
        let scale = UIScreen.main.bounds.size.height / 667
        
        distanceBetweenInputTextFieldAndResultLable.constant = UIScreen.main.bounds.size.height > 480 ?
            distanceBetweenInputTextFieldAndResultLable.constant * scale : distanceBetweenInputTextFieldAndResultLable.constant * 0.1
        
        distanceBetweenResultLableAndMiddleView.constant = UIScreen.main.bounds.size.height > 480 ?
            distanceBetweenResultLableAndMiddleView.constant * scale : distanceBetweenResultLableAndMiddleView.constant * 0.1
    }


}

