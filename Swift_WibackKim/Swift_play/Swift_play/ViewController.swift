//
//  ViewController.swift
//  Swift_play
//
//  Created by KimWiback on 1/31/16.
//  Copyright © 2016 KimWiback. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stx_1: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pb_1(sender: AnyObject) {
        stx_1.text = "Welcom to Swift"
    }
}

