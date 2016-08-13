//
//  ViewController.swift
//  Random Word Generator
//
//  Created by Michael Henry on 3/12/16.
//  Copyright © 2016 Digital Javelina, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let wordArray = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    
    @IBOutlet weak var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func wordGeneratorButton(sender: AnyObject) {
        let randomWordIndex = arc4random_uniform(UInt32(wordArray.count))
        wordLabel.text = wordArray[Int(randomWordIndex)]
    }

}

