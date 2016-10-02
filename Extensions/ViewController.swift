//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let fullName: String = "Luna An"
        let phoneNumber: Int = 8675309
        print("\(fullName.whisper()),\(fullName.shout())")
        print(fullName.points)
        print(fullName.pigLatin)
        print(phoneNumber.half())
        print(phoneNumber.halved)
        print(phoneNumber.squared)
        print(fullName.unicornLevel)
        
    }
}


