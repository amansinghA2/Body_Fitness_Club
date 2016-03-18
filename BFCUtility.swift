//
//  BFCUtility.swift
//  BFC
//
//  Created by aman on 16/03/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class BFCUtility: NSObject {

    class func leftArrowNavigationBarButton(uvc:UIViewController) {
        uvc.navigationController!.setNavigationBarHidden(false, animated:true)
        let leftBackButton:UIButton = UIButton(type: UIButtonType.Custom) as UIButton
        leftBackButton.addTarget(uvc, action: "popToRoot:", forControlEvents: UIControlEvents.TouchUpInside)
        leftBackButton.tintColor=UIColor.blackColor()
        let backImage = UIImage(named: "navigationBackArrowButton")
        leftBackButton.setImage(backImage, forState: UIControlState.Normal)
        leftBackButton.sizeToFit()
        let myCustomBackButtonItem:UIBarButtonItem = UIBarButtonItem(customView: leftBackButton)
        uvc.navigationItem.leftBarButtonItem  = myCustomBackButtonItem
    }

    
}
