//
//  ViewController.swift
//  MemeMe
//
//  Created by Sahil Garg on 06/02/16.
//  Copyright (c) 2016 sahilgarg.in. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label: UILabel!
    var count = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        
        //Button
        var button  = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        //Adding taget action method to button
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    
    func incrementCount() {
       self.count++
        self.label.text = "\(self.count)"
        
    }

}

