//
//  InsertViewControllerDelegate.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 20..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//

import UIKit

protocol InsertViewControllerDelegate {
    
    func InsertViewControllerDidCancel(controller: InsertViewController)
    
    func InsertViewControllerDidFinish(controller: InsertViewController, data: OneLineAddress)
    
}