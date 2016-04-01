//
//  ClientJSONMapper.swift
//  BFC
//
//  Created by aman on 28/03/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit
import CoreData
import Foundation

class ClientJSONMapper: NSObject {
    
    class func strengthBodyPartsMapper(bodyParts:NSMutableDictionary) -> [StrengthBodyParts]{
        var strength = [StrengthBodyParts]()
        let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let array = bodyParts["strengthBodyParts1"] as! Array<AnyObject>
        if let strengthParts = NSEntityDescription.entityForName("StrengthBodyParts", inManagedObjectContext:moc){
          for (_,value) in array.enumerate() {
            let strengthBodyParts = NSManagedObject(entity: strengthParts,
                insertIntoManagedObjectContext: moc) as! StrengthBodyParts
            strengthBodyParts.bodyName = value.valueForKey("bodyPartsTitle") as? String ?? ""
            strengthBodyParts.bodyImage = value.valueForKey("iconImage") as? String ?? ""
            strength.append(strengthBodyParts)
    }
}
        return strength
}

    
    
//    class func strengthBodyPartsExercisesMapper(bodyPartsExercises:[String:String]) -> ExercisesBodyPartsExercises {
//        
//    }
//    
//    class func exercisesDesc(excDesc:[String:String]) -> ExerciseDesc {
//        
//    }
    
}
