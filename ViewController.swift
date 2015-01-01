//
//  ViewController.swift
//  AnimateAutoLayout
//
//  Copyright (c) 2015年 test.org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var constraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func buttonAction(sender: AnyObject) {
        
        // 中央に移動
        if constraint.constant == 0 {
            constraint.constant = self.view.frame.size.height / 2.0
        } else {  // 下に移動
            constraint.constant = 0.0
        }
        
        let duration = 0.25
        UIView.animateWithDuration(duration, animations: {
            self.view.layoutIfNeeded()
            }
        )
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    
}

