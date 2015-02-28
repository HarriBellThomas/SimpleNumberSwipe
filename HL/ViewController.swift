//
//  ViewController.swift
//  HL
//
//  Created by Harri Bell-Thomas on 28/02/2015.
//  Copyright (c) 2015 Harri Bell-Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
    }

    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            var currentNumber:Int? = label.text!.toInt()
            
            
            if let myInt = currentNumber as Int! {
            
                
                switch swipeGesture.direction {
                case UISwipeGestureRecognizerDirection.Right:
                    label.text = "\(myInt - 1)"
                    
                    
                    
                case UISwipeGestureRecognizerDirection.Left:
                    label.text = "\(myInt + 1)"
                    
                default:
                    break
                }
                
                
                
            }
            
            
            
            
        
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

