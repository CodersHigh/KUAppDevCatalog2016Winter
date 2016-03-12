//
//  ScoreViewController.swift
//  musicsheetmanager
//
//  Created by cscoi021 on 2016. 2. 16..
//  Copyright © 2016년 cscoi021. All rights reserved.
//

import UIKit
import Foundation
import UIKit
import MapKit
import MediaPlayer
import AVFoundation


class ScoreViewController:UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var secne: UIImageView!
    @IBOutlet var scrolling: UIScrollView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
    }
    
    
    
    var imageName_inspect : String = "score"
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let targetImage = UIImage(named: imageName_inspect)
        let imageSize : CGSize = targetImage!.size
        
        for view in self.view.subviews {
            if view is UIScrollView {
                scrolling = view as! UIScrollView
            }
        }
        
        if scrolling.superview == nil {
            scrolling = UIScrollView(frame: CGRectZero)
            scrolling.frame = self.view.frame
            self.view.addSubview(scrolling)
        }
        scrolling.delegate = self
        
        secne = UIImageView(image: targetImage)
        scrolling.addSubview(secne)
        scrolling.contentSize = imageSize
    }
    
    
    
    
  /*  override func viewWillAppear(animated: Bool) {
        scrolling.contentSize = CGSizeMake(1600, 128)
        scrolling.contentOffset = CGPointMake(200, 0)
    }  */

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func scoreScore(sender: AnyObject) {
        
        guard let pinchGesture = sender as? UIPinchGestureRecognizer else {
            return
        }
        let currentScale = scrolling.zoomScale
        
        let state = pinchGesture.state
        if (state == .Began || state == .Changed)
        {
            let scale = currentScale + (pinchGesture.scale - 1.0)
            scrolling.zoomScale = scale
            pinchGesture.scale = 1.0
        }
    }
    
    @IBAction func dissmiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }    
    
    
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return secne
    }

   
    
}



