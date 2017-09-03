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
    var label:UILabel!
    var secondLabel:UILabel!
    var color:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 100, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        //2Label
        let secondLabel = UILabel()
        secondLabel.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        secondLabel.text = "0"
        self.view.addSubview(secondLabel)
        self.secondLabel = secondLabel
        
        
        // Increment Button
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 200, width: 60, height: 60)
        button.setTitle("Add", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        //Decrement Button
        let secondButton = UIButton()
        secondButton.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        secondButton.setTitle("Sub", for: .normal)
        secondButton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(secondButton)
        
        secondButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
        //Color Change Button
        let color = UIButton()
        color.frame = CGRect.init(x: 150, y: 300, width: 60, height: 60)
        color.setTitle("Color", for: .normal)
        color.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(color)
        
        color.addTarget(self, action: #selector(ViewController.viewColor), for: UIControlEvents.touchUpInside)
        
    }
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        
    }
    
    func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        
    }
    
    func viewColor() {
        self.view.backgroundColor = UIColor.red
    }

    


}

