//
//  ViewController.swift
//  ClickCounter
//
//  Created by Marco Grier on 9/3/17.
//  Copyright © 2017 Marco Grier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func incrementCount() {
        
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        
    }


}

