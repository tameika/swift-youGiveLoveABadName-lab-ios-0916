//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var bonjovi: UIImageView!
    
    @IBOutlet weak var bonjoviHeightConstraint: NSLayoutConstraint!
    
    
    var flagBonjovi = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bonjovi.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        print("tap it to the limit")
        
        if self.flagBonjovi {
        UIView.animateKeyframes(withDuration: 1.0, delay: 0.0, options: [.calculationModeCubic], animations: {
                
        
        
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
            self.bonjovi.transform = CGAffineTransform(scaleX: 1.0, y: 0.75)
            })
        
        UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
            self.bonjovi.transform = CGAffineTransform(scaleX: 1.0, y: 3.0)
        
            self.flagBonjovi = false 
            })
            
            
            
            })
        }else {
            
            UIView.animateKeyframes(withDuration: 1.0, delay: 0.0, options: [.calculationModeCubic], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.bonjovi.transform = CGAffineTransform(scaleX: 1.0, y: 0.9)
                })
                
                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                    self.bonjovi.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                
                })
            
            
            })
            self.flagBonjovi = true
            //self.flagBonjovi != self.flagBonjovi
        self.bonjovi.layoutIfNeeded()
        
    }
    

}

}
