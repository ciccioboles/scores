//
//  Border Button.swift
//  Scores
//
//  Created by David Boles on 3/8/18.
//  Copyright © 2018 David Boles. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 4
        layer.borderWidth = 1.75
        layer.borderColor = #colorLiteral(red: 0.3158289929, green: 0.3158289929, blue: 0.3158289929, alpha: 1)
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 2.0
        layer.shadowOffset = CGSize(width: 2.0,height: 2.0)
    }
    
}
