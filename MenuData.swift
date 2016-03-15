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
        return [ MenuData(image: UIImage(named: "CAT.jpeg") , title: "HOME"),
            MenuData(image: UIImage(named: "CAT.jpeg") , title: "Customize your Workout"),
            MenuData(image: UIImage(named: "CAT.jpeg") , title: "Select Language"),
            MenuData(image: UIImage(named: "CAT.jpeg") , title: "RateUS"),
            MenuData(image: UIImage(named: "CAT.jpeg") , title: "Share"),
            MenuData(image: UIImage(named: "CAT.jpeg") , title: "Remove Ads")
//            MenuData(image: UIImage(named: "ID-10034505.jpg") , title: ""),
//            MenuData(image: UIImage(named: "ID-10034505.jpg") , title: "")
        ]
    }
}
