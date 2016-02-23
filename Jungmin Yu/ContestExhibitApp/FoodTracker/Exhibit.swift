//
//  Exhibit.swift
//  FoodTracker
//
//  Created by Jane Appleseed on 5/26/15.
//  Copyright © 2015 Apple Inc. All rights reserved.
//  See LICENSE.txt for this sample’s licensing information.
//

import UIKit


class Participant {
    var name:String?
    var teamMember:String?
    var major:Exhibit?              //실제로는 카테고리를 나타내고 싶음.
    var phoneNumber:String?
}

struct Exhibit {
    var title:String?               //공모전제목
    var duedate:String?            //공모전기간
    var object:String?              //지원대상
    var award:String?               //상금
    var document:String?            //제출서류 링크
    var site:String?                //사이트 링크
    var poster:UIImage?           //이미지 삽입
    var detail:String?              //상세내용.
    
    var host:String?
    var category:String?
    
    
    /*
    var host:HostOrganization
    var category:ChooseCategory       //포함되는 카테고리 2개 이상 가능.
    
    enum HostOrganization:String {
        case Public
        case Private
        case Overseas
        case University
    }
    
    enum ChooseCategory:String {
        case UCC
        case DevelopApp
        case Architect
        case Newspaper
        case Medical
        case PublicOrganization
        case Tour
        case IndustrialEngineering
        case Idea
        case Design
        case Environment
        case SocialCulture
    */
    }

