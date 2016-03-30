//
//  MockDataManger.swift
//  BFC
//
//  Created by aman on 28/03/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class MockDataManger: NSObject {
    
    class func mockStrengthBodyParts(completionClouser: (result:NSMutableDictionary) -> Void){
       // [String:AnyObject]
        if let path = NSBundle.mainBundle().pathForResource("strengthBodyParts", ofType: "json"){
            do{
                let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: path) , options: NSDataReadingOptions.DataReadingMappedAlways)
                    do {
                        if let object:AnyObject = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)   {
                            completionClouser(result: object as! NSMutableDictionary)
                        }else{
                            print("could not get json from file, make sure that file contains valid json.")
                        }
                }
              catch let error as NSError {
                print(error.localizedDescription)
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }else {
            print("Invalid filename/path for child Registration Request Success JSON.")
        }
}

}
