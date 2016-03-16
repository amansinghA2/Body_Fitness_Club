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
        return [ MenuData(image: UIImage(named: "builder.jpeg") , title: "HOME"),
            MenuData(image: UIImage(named: "builder.jpeg") , title: "Customize your Workout"),
            MenuData(image: UIImage(named: "builder.jpeg") , title: "Select Language"),
            MenuData(image: UIImage(named: "builder.jpeg") , title: "RateUS"),
            MenuData(image: UIImage(named: "builder.jpeg") , title: "Share"),
            MenuData(image: UIImage(named: "builder.jpeg") , title: "Remove Ads"),
            MenuData(image: UIImage(named: "builder.jpeg") , title: "About")
//            MenuData(image: UIImage(named: "ID-10034505.jpg") , title: "")
        ]
    }
}
