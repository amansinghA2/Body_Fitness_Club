//
//  ExerciseDesc+CoreDataProperties.swift
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

extension ExerciseDesc {
    @NSManaged var image1: String?
    @NSManaged var image2: String?
    @NSManaged var image3: String?
    @NSManaged var image4: String?
    @NSManaged var bodyPartsExerciseDescription: String?
}
