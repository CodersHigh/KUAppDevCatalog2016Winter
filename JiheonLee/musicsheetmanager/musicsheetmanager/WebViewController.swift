//
//  ViewController.swift
//  musicsheetmanager
//
//  Created by cscoi021 on 2016. 2. 16..
//  Copyright © 2016년 cscoi021. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet var viewScore: UIWebView!

    @IBOutlet weak var met: UIBarButtonItem!
    
    var selectedSheet:String?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let aaa = selectedSheet{        
            
            let localfilePath = NSBundle.mainBundle().URLForResource(aaa, withExtension: "pdf");
            let myRequest = NSURLRequest(URL: localfilePath!);
            viewScore.loadRequest(myRequest);
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    

}































