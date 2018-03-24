//
//  ViewController.swift
//  Scores
//
//  Created by David Boles on 3/6/18.
//  Copyright © 2018 David Boles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //let giantsScore = Int(giantsScoreLabel.text!)
    //let visitorScore = Int(visitorScoreLabel.text!)
    
    @IBOutlet weak var giantsTextField: UITextField!
    @IBOutlet weak var visitorTextField: UITextField!
    @IBOutlet weak var giantsScoreLabel: UILabel!
    @IBOutlet weak var visitorScoreLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var whoWonLabel: UILabel!
    @IBOutlet weak var resetBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        giantsTextField.delegate = self
        visitorTextField.delegate = self
        winnerLabel.text = "enter a score"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        giantsTextField.resignFirstResponder()
        visitorTextField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func whoWonPressed(_ sender: Any) {
        
        if giantsTextField.text != nil {
            if let score = Int(giantsTextField.text!) {
                if score >= 0 {
                    print(score)
                    giantsScoreLabel.text = giantsTextField.text
                }
            }
        }
        
        if visitorTextField.text != nil {
            if let score = Int(visitorTextField.text!) {
                if score >= 0 {
                    visitorScoreLabel.text = visitorTextField.text
                }
            }
        }
        
        if let gtf = Int(giantsTextField.text!), let vtf = Int(visitorTextField.text!) {
            if gtf > vtf {
                giantsTextField.text = ""
                visitorTextField.text = ""
                winnerLabel.text = "Giants win!!!"
            } else if vtf > gtf {
                giantsTextField.text = ""
                visitorTextField.text = ""
                winnerLabel.text = "Visitors win!!!"
            } else {
                winnerLabel.text = "It's a tie..."
            }
        }
        
        
        
//            if Int(giantsTextField.text!) > Int(visitorTextField.text!) {
//            giantsTextField.text = ""
//            visitorTextField.text = ""
//            winnerLabel.text = "Giants win!!!"
//        } else if Int(visitorTextField.text!)! > Int(giantsTextField.text!)! {
//            giantsTextField.text = ""
//            visitorTextField.text = ""
//            winnerLabel.text = "Visitors win!!!"
//        } else {
//            winnerLabel.text = "It's a tie..."
//        }
//
        
        resetBtn.isHidden = false
        whoWonLabel.isHidden = true
        self.view.endEditing(true)
        transition()
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        giantsScoreLabel.text = "0"
        visitorScoreLabel.text = "0"
        winnerLabel.text = "Enter a score"
        giantsTextField.text = ""
        visitorTextField.text = ""
        resetBtn.isHidden = true
        whoWonLabel.isHidden = false
        transition()
    }
    
    
    
    func transition() {
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name:
            kCAMediaTimingFunctionEaseOut)
        view.layer.add(transition, forKey: nil)
    }
    
    
}











