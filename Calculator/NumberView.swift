//
//  NumberView.swift
//  Calculator
//
//  Created by Doãn Tuấn on 11/26/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit

class NumberView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
    }
    
    func createColorNumberButton(){
        
        
        backgroundColor = UIColor.init(red: 151/255, green: 151/255, blue: 151/255, alpha: 1.0)
        
        layer.borderWidth = CGFloat(Double(20))
        titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(20))
        
    }

}
