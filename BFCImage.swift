//
//  BFCImage.swift
//  BFC
//
//  Created by Aman on 3/13/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

enum ControllerImage{
    case Exercise
    case Workout
}

class BFCImage: UIImageView {
    
    var type:ControllerImage?
    
    override func awakeFromNib() {
        self.addTapGesture()
    }
    
    func addTapGesture(){
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "handleTap:")
        tapGestureRecognizer.numberOfTapsRequired = 1
        self.userInteractionEnabled = true
        self.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func handleTap(sender:UITapGestureRecognizer){
        switch self.tag
        {
        case 1 , 2 :
           UIApplication.sharedApplication().sendAction("couplesSegue", to: nil, from: self, forEvent: nil)
        case 3 , 4 , 5 , 6 :
             UIApplication.sharedApplication().sendAction("exercisesSegue", to: nil, from: self, forEvent: nil)
        default:
            print("")
        }
        }
    }
    
