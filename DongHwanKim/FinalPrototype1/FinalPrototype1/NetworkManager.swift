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

    func fetchTags(address:OneLineAddress, completionHandler: (NSError?, newPocket:Set<Pocket>) -> Void) {
        
        var newPocket:Set<Pocket> = []
        
        guard let targetAddress:OneLineAddress = address else {
            return
        }
        guard let host = NSURL(string: targetAddress.url)!.host else {
            return
        }

        let makeUrl:String = "http://" + host + "/"
        
        NetworkManager.sharedManager.backgroundManager.request(NSURLRequest(URL: NSURL(string: targetAddress.url)!)).responseString {
            // Alamofire.request(.GET, targetAddress.url).responseString {
            responseString in
            guard responseString.result.error == nil else {
                completionHandler(responseString.result.error!, newPocket: [])
                NSLog("%@", responseString.result.error!)
                return
                
            }
            guard let htmlAsString = responseString.result.value else {
                let error = Error.errorWithCode(.StringSerializationFailed, failureReason: "Could not get HTML as String")
                NSLog("%@", error)
                completionHandler(error, newPocket: [])
                return
            }
            
            let doc = HTMLDocument(string: htmlAsString)
            
            let anchors = doc.nodesMatchingSelector("a")
            
            for row in anchors {
                if let anchorElement = row as? HTMLElement {
                    if self.isAnchor(anchorElement) {
                        if  let title = self.matchKeyword(anchorElement, address: targetAddress), var url = anchorElement.objectForKeyedSubscript("href") as? String {
                            if !url.containsString("http") {
                                url = makeUrl + url
                            }
                            newPocket.insert(Pocket(title: title, url: url))
                                
                        }
                    }
                }
            }
            completionHandler(nil, newPocket: newPocket)
        }
    }
    
    
    func updateData(targetAddress:OneLineAddress, newPocket:Set<Pocket>) {
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

