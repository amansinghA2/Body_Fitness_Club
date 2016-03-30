//
//  StrengthBodyParts+CoreDataProperties.swift
//  BFC
//
//  Created by aman on 28/03/16.
//  Copyright © 2016 Aman. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension StrengthBodyParts {

    @NSManaged var bodyImage: String?
    @NSManaged var bodyName: String?
    @NSManaged var bodyPartExercise: NSManagedObject?

}
