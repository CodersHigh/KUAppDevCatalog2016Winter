//
//  DataController.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 18..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//

import Foundation
import HTMLReader
import Alamofire


// DataController는 oneLineAddress 클래스 하나에서 넘어온 url을 request로 보내 keyword를 검색한 후 결과를 oneLineAddress에 업데이트한다.
class DataController {

    // var targetAddress:oneLineAddress = oneLineAddress(url:urlString, searchKeyWord: "총선", updatePeriod: (1,20))
    
 
    // <a href> sentence contained with searchkeyword </a> 에서
    // 모든 anchor를 긁으면서 keyword를 찾아 oneLineAddress에 추가
    
    
    // 먼저 url로 html을 긁어온다.
    func fetchTags(address:OneLineAddress, completionHandler: (NSError?, newPocket:Set<String>) -> Void) {
        
        // 이번에 fetch된 data를 잠시 저장하는 버퍼포켓
        var newPocket:Set<String> = []
        
        guard let targetAddress:OneLineAddress = address else {
            return
        }
        
        
        let configuration = NSURLSessionConfiguration.backgroundSessionConfigurationWithIdentifier("com.trasient.FinalPrototype1.background")
        let manager = Alamofire.Manager(configuration: configuration)
        
        manager.request(NSURLRequest(URL: NSURL(string: targetAddress.url)!)).responseString {
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
                
                // find anchor tag in the HTML
                let anchors = doc.nodesMatchingSelector("a")
            
                for row in anchors {
                    if let anchorElement = row as? HTMLElement {
                        if self.isAnchor(anchorElement) {
                            //내가 찾는 키워드가 있으면 그 Element를 포켓에 넣는다.
                            if  let title = self.matchKeyword(anchorElement, address: targetAddress) {
                                newPocket.insert(title)
                            }
                           //print(anchorElement.textContent)
                        }
                    }
                }
                completionHandler(nil, newPocket: newPocket)
        }
    }
    
    
    // fetch받은 data를 업데이트하고 출력
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


