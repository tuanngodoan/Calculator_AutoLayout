//
//  NumberButtonView.swift
//  Calculator
//
//  Created by Doãn Tuấn on 11/26/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit

class NumberButtonView: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createNumberButtonUI()
    }
    
    func createNumberButtonUI(){
        
        backgroundColor = UIColor.init(red: 49/255, green: 58/255, blue: 75/255, alpha: 1.0)
        layer.borderColor = UIColor.white.cgColor
        titleLabel?.font = UIFont.systemFont(ofSize: 18)
        titleLabel?.textColor = UIColor.white
        
        
        
    }
}
