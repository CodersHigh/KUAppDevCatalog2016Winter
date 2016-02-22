//
//  NetworkManager.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 22..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//
import Foundation
import HTMLReader
import Alamofire


class NetworkManager {
    
    class var sharedManager:NetworkManager {
        struct Static {
            static let sharedManager:NetworkManager = NetworkManager()
        }
        return Static.sharedManager
    }
    
    lazy var backgroundManager: Alamofire.Manager = {
        let bundleIdentifier = "com.trasient.FinalPrototype1"
        return Alamofire.Manager(configuration: NSURLSessionConfiguration.backgroundSessionConfigurationWithIdentifier(bundleIdentifier + ".background"))
    }()
    
    var backgroundCompletionHandler: (() -> Void)? {
        
        get {
            return backgroundManager.backgroundCompletionHandler
        }
        set {
            backgroundManager.backgroundCompletionHandler = newValue
        }
    }

    func fetchTags(address:OneLineAddress, completionHandler: () -> Void) -> Set<String> {
        
        var newPocket:Set<String> = []
        
        guard let targetAddress:OneLineAddress = address else {
            return newPocket
        }
        
        NetworkManager.sharedManager.backgroundManager.startRequestsImmediately = true
        NetworkManager.sharedManager.backgroundManager.request(NSURLRequest(URL: NSURL(string: targetAddress.url)!)).responseString {
            responseString in
            guard responseString.result.error == nil else {
                NSLog("%@", responseString.result.error!)
                return
                
            }
            guard let htmlAsString = responseString.result.value else {
                let error = Error.errorWithCode(.StringSerializationFailed, failureReason: "Could not get HTML as String")
                NSLog("%@", error)
                return
            }
            
            let doc = HTMLDocument(string: htmlAsString)
            
            let anchors = doc.nodesMatchingSelector("a")
            
            for row in anchors {
                if let anchorElement = row as? HTMLElement {
                    if self.isAnchor(anchorElement) {
                        
                        if  let title = self.matchKeyword(anchorElement, address: targetAddress) {
                            newPocket.insert(title)
                        }
                        
                    }
                }
            }
            
            
            
        }
            completionHandler()
            return newPocket
        
    }
    
    
    func updateData(targetAddress:OneLineAddress, newPocket:Set<String>) {
        targetAddress.instantUpdate(newPocket)
    }
    
    
    private func isAnchor(anchorElement: HTMLElement) -> Bool {
        if anchorElement.children.count > 0 {
            return true
        }
        
        return false
    }
    
    func matchKeyword(anchorcontents:HTMLElement, address:OneLineAddress) -> String? {
        
        let anchorTitle = anchorcontents.childAtIndex(0).textContent.lowercaseString
        if anchorTitle.containsString(address.searchKeyword.lowercaseString) {
            return anchorTitle
        }
        return nil
        
    }
    
}

