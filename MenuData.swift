//
//  MenuData.swift
//  BFC
//
//  Created by Aman on 3/12/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class MenuData: NSObject {
    let title: String
    let image: UIImage?
    
    init(image: UIImage? , title: String) {
        self.image = image
         self.title = title
    }
    
    class func menuData() -> [MenuData] {
        return [ MenuData(image: UIImage(named: "HomeIcon") , title: "Home"),
            MenuData(image: UIImage(named: "share-icon") , title: "Customize your Workout"),
            MenuData(image: UIImage(named: "LanguageIcon") , title: "Select Language"),
            MenuData(image: UIImage(named: "icon_satisfaction") , title: "RateUS"),
            MenuData(image: UIImage(named: "share-icon") , title: "Share"),
            MenuData(image: UIImage(named: "RemoveAds") , title: "Remove Ads"),
            MenuData(image: UIImage(named: "info-icon-preview") , title: "About")
//          MenuData(image: UIImage(named: "ID-10034505.jpg") , title: "")
        ]
    }
}
