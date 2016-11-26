//
//  Operator.swift
//  Calculator
//
//  Created by Doãn Tuấn on 11/26/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit

class Operator: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureButton()
        
    }
    
    
    func configureButton(){
        
        if tag == 101 {
            backgroundColor = UIColor(colorLiteralRed: 245/255, green: 165/255, blue: 34/255, alpha: 1.0)
        }else{
            backgroundColor = UIColor(colorLiteralRed: 116/255, green: 219/255, blue: 110/255, alpha: 1.0)
        }
        
        layer.cornerRadius = 8.0
        titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(20))
        self.setTitleColor(UIColor.white, for: UIControlState.normal)
        
        
    }

}
