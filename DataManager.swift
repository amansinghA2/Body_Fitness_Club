//
//  DataManager.swift
//  BFC
//
//  Created by aman on 28/03/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class DataManager: NSObject {

    class func strengthBodyParts(completionClouser: (isSuccessful:Bool,error:NSError?) -> Void) {
        
        MockDataManger.mockStrengthBodyParts({ (result) -> Void in
               let bodyParts = ClientJSONMapper.strengthBodyPartsMapper(result)
                completionClouser(isSuccessful: true,error: nil)
            })
    }
    
}

