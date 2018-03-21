//
//  TextField.swift
//  Scores
//
//  Created by David Boles on 3/16/18.
//  Copyright © 2018 David Boles. All rights reserved.
//

import UIKit

class TextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let txtField = UILabel(frame: CGRect(x: 15, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        txtField.backgroundColor = #colorLiteral(red: 0.6996104074, green: 0.7574834766, blue: 0.8415586705, alpha: 0.8514822346)
        txtField.textAlignment = .center
        txtField.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        txtField.layer.cornerRadius = 5.0
        txtField.clipsToBounds = true
        layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.borderWidth = 1.5

        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        

    }
    

}
