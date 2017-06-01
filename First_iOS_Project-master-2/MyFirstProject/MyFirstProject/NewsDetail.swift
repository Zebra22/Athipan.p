//
//  NewsDetail.swift
//  MyFirstProject
//
//  Created by std108 on 6/1/17.
//  Copyright © 2017 IndyZaLab. All rights reserved.
//

import UIKit
import ObjectMapper

class NewsDetail: Mappable {
    
    var id:Int = -1
    var updateAt:String = ""
    var content:String = ""
    var creted:String = ""
    var imageUrls: [String] = []
    var link:String = ""
    var lat:Double?
    var lng:Double?
    private var primaryColorStr:String = "000000"
    private var secondaryColorStr:String = "DDDDDD"
    private var backgroundColorStr:String = "FFFFFF"
    
    var primaryColor:UIColor{
        return UIColor(hexString: self.primaryColorStr)
        }
    
    var secondaryColor:UIColor{
        return UIColor(hexString: self.secondaryColorStr)
        }

var backgroundColor:UIColor{
    return UIColor(hexString: self.backgroundColorStr)
    }


    init() {
        
        
    }
    
    required init(map: Map){
        
    }
    //เชื่อมกับตัวใน Json
    func mapping(map: Map){
        self.id             <- map["id"]
        self.backgroundColorStr          <- map["background_color"]
        self.content    <- map["content"]
        self.imageUrls       <- map["image_urls"]
        self.creted       <- map["creted_at"]
        self.lat           <- map["lat"]
        self.link       <- map["link"]
        self.lng     <- map["lng"]
        self.primaryColorStr    <- map["primary_color"]
        self.secondaryColorStr <- map["secondary_color"]
        self.updateAt <- map["update_at"]
    }
    
    
    
    
    
    
    
    

}
