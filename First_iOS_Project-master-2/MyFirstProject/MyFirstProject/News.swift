//
//  News.swift
//  MyFirstProject
//
//  Created by IndyZa on 5/29/2560 BE.
//  Copyright © 2560 IndyZaLab. All rights reserved.
//

import UIKit
import ObjectMapper

class News:Mappable {
    var id:Int = -1
    var title:String = ""
    var description:String = ""
    var iconImage:UIImage = UIImage()
    var imageURL = ""
    var author:String = ""
    var view:Int = -1
    var createDate:String = ""
    var category:String = ""
    var updateDate:String = ""
    var newsDetail:NewsDetail?
    
    

    
    
    
    init(id:Int,title:String, description:String, iconImage:UIImage, author:String, view:Int, createDate:String, category:String = "Undefined") {
        self.id = id
        self.title = title
        self.description = description
        self.iconImage = iconImage
        self.author = author
        self.view = view
        self.createDate = createDate
        self.category = category
    }

    required init(map: Map){
        
    }
    //เชื่อมกับตัวใน Json
    func mapping(map: Map){
        self.id             <- map["id"]
        self.title          <- map["title"]
        self.description    <- map["description"]
        self.imageURL       <- map["image_url"]
        self.category       <- map["category"]
        self.view           <- map["total_view"]
        self.author         <- map["author"]
        self.createDate     <- map["create_at"]
        self.updateDate     <- map["update_at"]
    }
    
}
